import 'package:crypto_app/src/features/domain/models/token.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';

class Interface {
  static Token firstInitToken = Token(
    name: 'BUSD',
    contract: '0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56',
    coinImage: Assets.lib.src.assets.png.busd.path,
  );
  static Token secondInitToken = Token(
    name: 'USDT',
    contract: '0x55d398326f99059fF775485246999027B3197955',
    coinImage: Assets.lib.src.assets.png.usdt.path,
  );
  static const String initCost = '0';
  static const String initDate = '';
}
