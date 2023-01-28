import 'package:crypto_app/src/app/app_secrets.dart';
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
    Token(name: 'Choose', contract: '', coinImage: ''),
    Token(name: 'Choose', contract: '', coinImage: ''),
  );

  String cost = '0';
  String dateMDY = '';
  String dateH = '';

  String ethereumClientUrl = AppSecrets.appSecretsDev.pancakeSwapUrl;

  String pancakeSwapContract = AppSecrets.appSecretsDev.contractAddress;

  Future<DeployedContract> _getContract(String abi) async {
    final contract = DeployedContract(
      ContractAbi.fromJson(abi, 'abi'),
      EthereumAddress.fromHex(
        pancakeSwapContract.toLowerCase(),
      ),
    );
    return contract;
  }

  Future<void> getPrice(String token1Address, String token2Address) async {
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
          EthereumAddress.fromHex(token1Address),
          EthereumAddress.fromHex(token2Address)
        ],
      ],
    );
    dateMDY = DateFormat.yMd().format(DateTime.now());
    dateH = DateFormat.Hm().format(DateTime.now());
    cost = gettingThePrice.first[1].toString();

    notifyListeners();
  }

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
}
