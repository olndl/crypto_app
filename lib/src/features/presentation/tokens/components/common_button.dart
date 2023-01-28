import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/theme/typography.dart';
import 'package:flutter/material.dart';

import 'click_style.dart';

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
        width: 80.percentOfWidth,
        height: 15.percentOfHeight,
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
              width: 10,
            ),
            icon
          ],
        ),
      ),
    );
  }
}
