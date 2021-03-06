import 'package:flutter/material.dart';

class PrimaryLabel extends StatelessWidget {
  final Color bgColor;
  final Widget? child;

  const PrimaryLabel({
    this.bgColor = Colors.blueAccent,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
