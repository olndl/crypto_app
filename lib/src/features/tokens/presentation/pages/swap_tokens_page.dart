import 'package:crypto_app/src/core/localization/l10n/s.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/common_button.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/custom_scaffold.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/logo_app_bar.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/tokens_swap.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SwapTokensPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: CustomScrollView(
        slivers: [
          LogoAppBar(
            backgroundImage: Assets.lib.src.assets.svg.mainImage.svg(),
            title: S.of(context).tokensTitle,
          ),
          TokensSwap(),
          SliverToBoxAdapter(
            child: CommonButton(
              onTap: () {},
              title: S.of(context).watchButton,
              icon: Assets.lib.src.assets.svg.icon.svg(),
            ),
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
