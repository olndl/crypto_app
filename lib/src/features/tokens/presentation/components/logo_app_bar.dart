import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/core/theme/typography.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoAppBar extends StatelessWidget {
  const LogoAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 40.percentOfHeight,
      elevation: 0.0,
      backgroundColor: ColorsGuide.firstBackgroundGrad,
      stretch: true,
      pinned: true,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          'Choose tokens',
          style: TextStyles.medium.copyWith(color: Colors.white),
        ),
        background: Assets.lib.src.assets.svg.mainImage.svg(),
      ),
    );
  }
}
