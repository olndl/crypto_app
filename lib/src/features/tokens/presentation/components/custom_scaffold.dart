import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Gradient gradient;
  final Widget? body;
  const CustomScaffold({
    Key? key,
    this.body,
    required this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
      ),
      child: Scaffold(
        body: body,
        backgroundColor: ColorsGuide.firstBackgroundGrad,
      ),
    );
  }
}
