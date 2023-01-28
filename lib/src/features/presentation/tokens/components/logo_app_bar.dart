import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/core/theme/typography.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class LogoAppBar extends StatelessWidget {
  final Widget backgroundImage;
  final String? title;
  final bool isMainPage;
  final VoidCallback? onTap;
  const LogoAppBar({
    Key? key,
    required this.backgroundImage,
    this.title,
    required this.isMainPage,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 45.percentOfHeight,
      elevation: 0.0,
      backgroundColor: ColorsGuide.firstBackgroundGrad,
      stretch: true,
      pinned: true,
      automaticallyImplyLeading: false,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Row(
          children: [
            !isMainPage
                ? IconButton(
                    onPressed: onTap,
                    icon: Assets.lib.src.assets.svg.arrowBack.svg(),
                  )
                : SizedBox(
                    width: 13.percentOfWidth,
                  ),
            SizedBox(
              width: 10.percentOfWidth,
            ),
            Text(
              title ?? '',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyles.semiBold.copyWith(color: Colors.white),
            ),
          ],
        ),
        background: backgroundImage,
      ),
    );
  }
}
