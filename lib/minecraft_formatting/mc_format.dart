import 'package:flutter/material.dart';
import 'package:mcstatus_flutter/minecraft_formatting/formatting_code_state.dart';

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
      final state = FormattingCodeState.fromCode(code);

      sentences.add(_Sentence(
        text,
        style.copyWith(
          color: state.style?.color,
          fontWeight: state.style?.fontWeight,
          fontStyle: state.style?.fontStyle,
          decoration: state.style?.decoration,
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
}
