import 'package:crypto_app/src/features/data/datasources/token_datasource.dart';
import 'package:crypto_app/src/features/domain/models/token.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';

class TokenDataSourceImpl implements TokenDataSource {
  @override
  List<Token> getTokens() {
    return <Token>[
      Token(
        name: 'USDC',
        contract: '0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d',
        coinImage: Assets.lib.src.assets.png.usd.path,
      ),
      Token(
        name: 'BUSD',
        contract: '0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56',
        coinImage: Assets.lib.src.assets.png.busd.path,
      ),
      Token(
        name: 'WBNB',
        contract: '0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c',
        coinImage: Assets.lib.src.assets.png.bnb.path,
      ),
      Token(
        name: 'USDT',
        contract: '0x55d398326f99059fF775485246999027B3197955',
        coinImage: Assets.lib.src.assets.png.usdt.path,
      ),
      Token(
        name: 'BTCB',
        contract: '0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c',
        coinImage: Assets.lib.src.assets.png.btc.path,
      ),
      Token(
        name: 'ETH',
        contract: '0x2170Ed0880ac9A755fd29B2688956BD959F933F8',
        coinImage: Assets.lib.src.assets.png.eth.path,
      ),
      Token(
        name: 'CAKE',
        contract: '0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82',
        coinImage: Assets.lib.src.assets.png.cake.path,
      ),
    ];
  }
}
