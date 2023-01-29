import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/navigation/provider.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/core/theme/typography.dart';
import 'package:crypto_app/src/features/domain/models/token.dart';
import 'package:crypto_app/src/features/presentation/currency/components/custom_card.dart';
import 'package:crypto_app/src/features/presentation/providers/tokens_change_provider.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/click_style.dart';
import 'package:flutter/material.dart';
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
      child: CustomCard(
        width: 50.percentOfWidth,
        height: 10.percentOfHeight,
        cardColor: ColorsGuide.background,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2.percentOfWidth,
            vertical: 2.percentOfHeight,
          ),
          child: ListTile(
            title: Text(
              token.name,
              textAlign: TextAlign.center,
              style: TextStyles.regular,
            ),
            leading: Image.asset(
              token.coinImage!,
              width: 20.percentOfWidth,
            ),
          ),
        ),
      ),
    );
  }
}
