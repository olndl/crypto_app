import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/theme/typography.dart';
import 'package:crypto_app/src/features/presentation/tokens/components/click_style.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final Widget icon;
  const CommonButton({
    Key? key,
    required this.onTap,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClickStyle(
      onTap: onTap,
      indent: 3,
      child: Container(
        width: 90.percentOfWidth,
        height: 10.percentOfHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyles.regular
                  .copyWith(color: Colors.white, fontSize: 26),
              maxLines: 2,
            ),
            SizedBox(
              width: .5.percentOfWidth,
            ),
            icon
          ],
        ),
      ),
    );
  }
}
