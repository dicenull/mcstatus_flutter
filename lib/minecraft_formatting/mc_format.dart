import 'package:flutter/material.dart';

class McFormat {
  Widget decode(String rawText, TextStyle style) {
    final sentences = rawText.split('§');

    sentences.map((sentence) {
      if (sentence.isEmpty) {
        throw FormatException('Formatting Code is empty.');
      }

      final code = sentence[0];
      final color = colorPaletteFrom(code);
    });

    // return RichText(text: rawText);
  }

  Color colorPaletteFrom(String code) {
    switch (code) {
      case '0':
        return Color(0x000000);
      case '1':
        return Color(0x0000AA);
      case '2':
        return Color(0x00AA00);
      case '3':
        return Color(0x00AAAA);
      case '4':
        return Color(0xAA0000);
      case '5':
        return Color(0xAA00AA);
      case '6':
        return Color(0xFFAA00);
      case '7':
        return Color(0xAAAAAA);
      case '8':
        return Color(0x555555);
      case '9':
        return Color(0x5555FF);
      case 'a':
        return Color(0x55FF55);
      case 'b':
        return Color(0x55FFFF);
      case 'c':
        return Color(0xFF5555);
      case 'd':
        return Color(0xFF55FF);
      case 'e':
        return Color(0xFFFF55);
      case 'f':
        return Color(0xFFFFFF);
      case 'g':
        return Color(0xDDD605);
      default:
        throw FormatException('Invalid FormattingCode');
    }
  }
}
