import 'package:flutter/material.dart';

class _Sentence {
  final String text;
  final TextStyle style;

  _Sentence(this.text, this.style);
}

class McformatText extends StatelessWidget {
  final TextStyle style;
  final String rawText;

  McformatText({
    required this.rawText,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    final data = rawText.split('§').where((t) => t.isNotEmpty);
    final sentences = <_Sentence>[];

    for (final sentence in data) {
      if (sentence.isEmpty) {
        throw FormatException('Formatting Code is empty.');
      }

      final code = sentence[0];
      final text = sentence.substring(1);

      sentences.add(_Sentence(
        text,
        TextStyle(
          color: colorPaletteFrom(code),
        ),
      ));
    }

    return Text.rich(
      TextSpan(
        children: sentences.map((sentence) {
          return TextSpan(
            text: sentence.text,
            style: sentence.style,
          );
        }).toList(),
      ),
      style: style,
    );
  }

  Color colorPaletteFrom(String code) {
    switch (code) {
      case '0':
        return Color(0xFF000000);
      case '1':
        return Color(0xFF0000AA);
      case '2':
        return Color(0xFF00AA00);
      case '3':
        return Color(0xFF00AAAA);
      case '4':
        return Color(0xFFAA0000);
      case '5':
        return Color(0xFFAA00AA);
      case '6':
        return Color(0xFFFFAA00);
      case '7':
        return Color(0xFFAAAAAA);
      case '8':
        return Color(0xFF555555);
      case '9':
        return Color(0xFF5555FF);
      case 'a':
        return Color(0xFF55FF55);
      case 'b':
        return Color(0xFF55FFFF);
      case 'c':
        return Color(0xFFFF5555);
      case 'd':
        return Color(0xFFFF55FF);
      case 'e':
        return Color(0xFFFFFF55);
      case 'f':
        return Color(0xFFFFFFFF);
      case 'g':
        return Color(0xFFDDD605);
      default:
        throw FormatException('Invalid FormattingCode');
    }
  }
}
