import 'dart:async';
import 'dart:io';

import 'package:crypto_app/src/app/app_secrets.dart';
import 'package:crypto_app/src/core/constants/interface.dart';
import 'package:crypto_app/src/core/constants/urls.dart';
import 'package:crypto_app/src/features/domain/models/pair.dart';
import 'package:crypto_app/src/features/domain/models/token.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:web3dart/web3dart.dart';

final tokensChangeProvider =
    ChangeNotifierProvider<ChangeTokensProvider>((ref) {
  return ChangeTokensProvider();
});

class ChangeTokensProvider with ChangeNotifier {
  final Pair pair = Pair(
    Interface.firstInitToken,
    Interface.secondInitToken,
  );

  String cost = Interface.initCost;
  String dateMDY = Interface.initDate;
  String dateH = Interface.initDate;

  String ethereumClientUrl = AppSecrets.appSecretsDev.pancakeSwapUrl;

  String pancakeSwapContract = AppSecrets.appSecretsDev.contractAddress;

  Pair get currantPair => pair;

  void changeFirst(Token token) {
    if (token == pair.token2) {
      pair.token2 = pair.token1;
    }
    pair.token1 = token;
    notifyListeners();
  }

  void changeSecond(Token token) {
    if (token == pair.token1) {
      pair.token1 = pair.token2;
    }
    pair.token2 = token;
    notifyListeners();
  }

  void swapTokens(Token firstToken, Token secondToken) {
    pair.token1 = secondToken;
    pair.token2 = firstToken;
    notifyListeners();
  }

  Future<DeployedContract> _getContract(String abi) async {
    final contract = DeployedContract(
      ContractAbi.fromJson(abi, Urls.jsonFileName),
      EthereumAddress.fromHex(
        pancakeSwapContract.toLowerCase(),
      ),
    );
    return contract;
  }

  Future<void> getPrice(String firstToken, String secondToken) async {
    Client httpClient = Client();
    Web3Client ethereumClient = Web3Client(ethereumClientUrl, httpClient);
    String abi = await rootBundle.loadString(Urls.pathAbi);
    DeployedContract contract = await _getContract(abi);

    final getThePriceContract = contract.function(Urls.funcName);
    final gettingThePrice = await ethereumClient.call(
      contract: contract,
      function: getThePriceContract,
      params: <dynamic>[
        BigInt.from(1),
        [
          EthereumAddress.fromHex(firstToken),
          EthereumAddress.fromHex(secondToken)
        ],
      ],
    );
    dateMDY = DateFormat.yMd(Platform.localeName).format(
      DateTime.now(),
    );
    dateH = DateFormat.Hm().format(DateTime.now());
    cost = gettingThePrice.first[1].toString();
    Timer.periodic(
      const Duration(
        seconds: 60,
      ),
      (_) => getPrice(firstToken, secondToken),
    );
    notifyListeners();
  }
}
