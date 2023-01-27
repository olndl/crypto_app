import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/core/theme/typography.dart';
import 'package:crypto_app/src/features/currency/presentation/components/custom_card.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/click_style.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';

class CurrencyList extends StatelessWidget {
  const CurrencyList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return ClickStyle(
            onTap: () => {},
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  CustomCard(
                    width: 70.percentOfWidth,
                    height: 10.percentOfHeight,
                    cardColor: ColorsGuide.background,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.percentOfWidth,
                        vertical: 2.percentOfHeight,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'dfdfdsfds',
                            textAlign: TextAlign.center,
                            style: TextStyles.regular,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: -5,
                    //right: 2,
                    // top: 10.percentOfHeight,
                    child: Image.asset(
                      Assets.lib.src.assets.png.card.path,
                      width: 30.percentOfWidth,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: 10,
        //post.data?.children?.length,
      ),
    );
  }
}
