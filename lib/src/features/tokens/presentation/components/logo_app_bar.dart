import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/core/theme/typography.dart';
import 'package:flutter/material.dart';

class LogoAppBar extends StatelessWidget {
  final Widget backgroundImage;
  final String? title;
  const LogoAppBar({Key? key, required this.backgroundImage, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 35.percentOfHeight,
      elevation: 0.0,
      backgroundColor: ColorsGuide.firstBackgroundGrad,
      stretch: true,
      pinned: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
      ),
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          title ?? '',
          style: TextStyles.semiBold.copyWith(color: Colors.white),
        ),
        background: backgroundImage,
      ),
    );
  }
}
