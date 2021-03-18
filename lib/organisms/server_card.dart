import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mcstatus_flutter/atoms/named_counter.dart';
import 'package:mcstatus_flutter/minecraft_formatting/mc_format.dart';

class ServerCard extends StatelessWidget {
  final NamedCounter namedCounter;
  final String text;
  final Widget button;

  const ServerCard({
    Key? key,
    required this.namedCounter,
    required this.text,
    required this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxWidth = min(600.0, MediaQuery.of(context).size.width - 16);
    final textTheme =
        Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white);

    return Card(
      color: Colors.grey,
      child: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            namedCounter,
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: McformatText(
                  rawText: text,
                  style: textTheme,
                ),
              ),
            ),
            button,
          ],
        ),
      ),
    );
  }
}
