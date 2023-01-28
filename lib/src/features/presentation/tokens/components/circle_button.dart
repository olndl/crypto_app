import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final Widget iconData;

  const CircleButton({Key? key, required this.onTap, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 14.percentOfWidth;

    return new InkResponse(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromRGBO(
                0,
                0,
                0,
                0.8980392156862745,
              ),
              blurRadius: 5,
            ) //blur radius of shadow
          ],
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              ColorsGuide.firstIconButtonGrad,
              ColorsGuide.secondIconButtonGrad,
              ColorsGuide.secondIconButtonGrad
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: iconData,
        ),
      ),
    );
  }
}
