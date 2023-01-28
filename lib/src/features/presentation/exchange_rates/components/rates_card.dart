import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/localization/l10n/s.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/core/theme/typography.dart';
import 'package:crypto_app/src/features/presentation/currency/components/custom_card.dart';
import 'package:crypto_app/src/features/presentation/providers/tokens_change_provider.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RatesCard extends ConsumerWidget {
  const RatesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(tokensChangeProvider);
    final pair = ref.watch(tokensChangeProvider).currantPair;
    return Padding(
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
                      Assets.lib.src.assets.svg.iconStat.svg(width: 30),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        S.of(context).today,
                        style: TextStyles.medium,
                      ),
                    ],
                  ),
                  Text(
                    '${pair.token1!.name} / ${pair.token2!.name}',
                    style: TextStyles.semiBold.copyWith(color: Colors.white),
                  ),
                  Text(
                    '${date.cost}',
                    style: TextStyles.extraBold.copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    '${S.of(context).lastUpdate} ${date.dateMDY}',
                    style: TextStyles.regular.copyWith(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '${S.of(context).at} ${date.dateH}',
                    style: TextStyles.regular.copyWith(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )
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
    );
  }
}
