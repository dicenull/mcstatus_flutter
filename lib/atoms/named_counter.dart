import 'package:flutter/material.dart';
import 'package:mcstatus_flutter/atoms/primary_label.dart';

class NamedCounter extends StatelessWidget {
  final String text;
  final int count;
  final Color bgColor, badgeColor;

  const NamedCounter({
    Key? key,
    required this.text,
    required this.count,
    required this.bgColor,
    required this.badgeColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme =
        Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white);
    final padding = const EdgeInsets.symmetric(horizontal: 4, vertical: 2);

    return PrimaryLabel(
      bgColor: bgColor,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          PrimaryLabel(
            bgColor: badgeColor,
            child: Padding(
              padding: padding,
              child: Text(
                text,
                style: textTheme,
              ),
            ),
          ),
          Padding(
            padding: padding,
            child: Text(
              count.toString(),
              style: textTheme,
            ),
          )
        ],
      ),
    );
  }
}
