import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/navigation/provider.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/core/theme/typography.dart';
import 'package:crypto_app/src/features/domain/models/token.dart';
import 'package:crypto_app/src/features/presentation/currency/components/custom_card.dart';
import 'package:crypto_app/src/features/presentation/providers/tokens_change_provider.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/click_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyCard extends ConsumerWidget {
  final Token token;
  final bool isFirstToken;
  const CurrencyCard({
    Key? key,
    required this.token,
    required this.isFirstToken,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClickStyle(
      onTap: () {
        isFirstToken
            ? ref.read(tokensChangeProvider).changeFirst(token)
            : ref.read(tokensChangeProvider).changeSecond(token);
        ref.read(routerDelegateProvider).pop();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            CustomCard(
              width: 70.percentOfWidth,
              height: 12.percentOfHeight,
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
                      token.name,
                      textAlign: TextAlign.center,
                      style: TextStyles.regular,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 15,
              bottom: 20,
              left: 0,
              child: Image.asset(
                token.coinImage!,
                width: 30.percentOfWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
