import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/localization/l10n/s.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/core/theme/typography.dart';
import 'package:crypto_app/src/features/currency/presentation/components/custom_card.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/common_button.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/custom_scaffold.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';

class ExchangeRatesPage extends StatelessWidget {
  const ExchangeRatesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 0.percentOfHeight),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                CustomCard(
                  width: 90.percentOfWidth,
                  height: 25.percentOfHeight,
                  cardColor: ColorsGuide.primaryPink,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.percentOfWidth,
                      vertical: 2.percentOfHeight,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: [
                            Assets.lib.src.assets.svg.iconStat.svg(),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '2.70% Today',
                              style: TextStyles.medium,
                            ),
                          ],
                        ),
                        Text(
                          'BNB / CAKE',
                          style: TextStyles.semiBold,
                        ),
                        Text(
                          '\$15600',
                          style: TextStyles.bold,
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          '${S.of(context).lastUpdate} 12.12.22 ${S.of(context).at} 15:12',
                          style: TextStyles.regular.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 62,
                  right: 0,
                  child: Assets.lib.src.assets.svg.imageCoins
                      .svg(width: 40.percentOfWidth),
                ),
              ],
            ),
          ),
          CommonButton(
            onTap: () {},
            title: S.of(context).anotherPair,
            icon: Assets.lib.src.assets.svg.anotherPair.svg(width: 30),
          )
        ],
      ),
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          ColorsGuide.firstBackgroundGrad,
          ColorsGuide.secondBackgroundGrad
        ],
      ),
    );
  }
}
