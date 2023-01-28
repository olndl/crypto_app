import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget? body;
  const CustomScaffold({
    Key? key,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            ColorsGuide.firstBackgroundGrad,
            ColorsGuide.secondBackgroundGrad
          ],
        ),
      ),
      child: Scaffold(
        body: body,
        backgroundColor: ColorsGuide.firstBackgroundGrad,
      ),
    );
  }
}
