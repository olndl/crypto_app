import 'package:flutter/material.dart';

class ClickStyle extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget child;
  final double? indent;
  final double? radius;
  final Color? splashColor;
  const ClickStyle({
    Key? key,
    this.onTap,
    required this.child,
    this.indent,
    this.splashColor,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      splashColor: splashColor ?? Colors.purple.withOpacity(.12),
      highlightColor: Colors.transparent,
      borderRadius: BorderRadius.circular(radius ?? 4),
      child: Container(
        margin: EdgeInsets.all(indent ?? 0),
        child: child,
      ),
    );
  }
}
