import 'package:crypto_app/src/core/localization/l10n/s.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/common_button.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/custom_scaffold.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/logo_app_bar.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/tokens_swap.dart';
import 'package:flutter/material.dart';

class SwapTokens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomScrollView(
        slivers: [
          LogoAppBar(),
          TokensSwap(),
          CommonButton(
            onTap: () {},
            title: S.of(context).watchButton.toUpperCase(),
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
