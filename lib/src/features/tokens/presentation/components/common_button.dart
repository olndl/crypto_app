import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/theme/typography.dart';
import 'package:crypto_app/src/features/tokens/presentation/components/click_style.dart';
import 'package:crypto_app/src/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const CommonButton({Key? key, required this.onTap, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ClickStyle(
        onTap: onTap,
        indent: 3,
        child: Container(
          width: 10.percentOfWidth,
          height: 15.percentOfHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyles.regular
                    .copyWith(color: Colors.white, fontSize: 26),
              ),
              SizedBox(
                width: 10,
              ),
              Assets.lib.src.assets.svg.icon.svg()
            ],
          ),
        ),
      ),
    );
  }
}
