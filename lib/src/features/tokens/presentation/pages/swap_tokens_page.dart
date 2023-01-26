import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/common_button.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/custom_scaffold.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/logo_app_bar.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/tokens_swap.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SwapTokens extends StatefulWidget {
  const SwapTokens({Key? key}) : super(key: key);

  @override
  State<SwapTokens> createState() => _SwapTokensState();
}

class _SwapTokensState extends State<SwapTokens> {
  @override
  Widget build(BuildContext context) {
    print(Assets.lib.src.assets.svg.mainImage);
    return CustomScaffold(
      body: CustomScrollView(
        slivers: [LogoAppBar(), TokensSwap(), CommonButton(onTap: () {})],
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
