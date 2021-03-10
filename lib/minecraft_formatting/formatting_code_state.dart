import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'formatting_code_state.freezed.dart';

@freezed
class FormattingCodeState with _$FormattingCodeState {
  factory FormattingCodeState({
    @Default(false) bool isObfuscated,
    TextStyle? style,
  }) = _FormattingCodeState;

  factory FormattingCodeState.fromCode(String code) {
    var state = FormattingCodeState();

    switch (code) {
      // Color
      case '0':
        state = state.copyWith(style: TextStyle(color: Color(0xFF000000)));
        break;
      case '1':
        state = state.copyWith(style: TextStyle(color: Color(0xFF0000AA)));
        break;
      case '2':
        state = state.copyWith(style: TextStyle(color: Color(0xFF00AA00)));
        break;
      case '3':
        state = state.copyWith(style: TextStyle(color: Color(0xFF00AAAA)));
        break;
      case '4':
        state = state.copyWith(style: TextStyle(color: Color(0xFFAA0000)));
        break;
      case '5':
        state = state.copyWith(style: TextStyle(color: Color(0xFFAA00AA)));
        break;
      case '6':
        state = state.copyWith(style: TextStyle(color: Color(0xFFFFAA00)));
        break;
      case '7':
        state = state.copyWith(style: TextStyle(color: Color(0xFFAAAAAA)));
        break;
      case '8':
        state = state.copyWith(style: TextStyle(color: Color(0xFF555555)));
        break;
      case '9':
        state = state.copyWith(style: TextStyle(color: Color(0xFF5555FF)));
        break;
      case 'a':
        state = state.copyWith(style: TextStyle(color: Color(0xFF55FF55)));
        break;
      case 'b':
        state = state.copyWith(style: TextStyle(color: Color(0xFF55FFFF)));
        break;
      case 'c':
        state = state.copyWith(style: TextStyle(color: Color(0xFFFF5555)));
        break;
      case 'd':
        state = state.copyWith(style: TextStyle(color: Color(0xFFFF55FF)));
        break;
      case 'e':
        state = state.copyWith(style: TextStyle(color: Color(0xFFFFFF55)));
        break;
      case 'f':
        state = state.copyWith(style: TextStyle(color: Color(0xFFFFFFFF)));
        break;
      case 'g':
        state = state.copyWith(style: TextStyle(color: Color(0xFFDDD605)));
        break;
      // Obfuscated
      case 'k':
        state = state.copyWith(isObfuscated: true);
        break;
      // TextStyle
      case 'l':
        state = state.copyWith(style: TextStyle(fontWeight: FontWeight.bold));
        break;
      case 'm':
        state = state.copyWith(
            style: TextStyle(decoration: TextDecoration.lineThrough));
        break;
      case 'n':
        state = state.copyWith(
            style: TextStyle(decoration: TextDecoration.underline));
        break;
      case 'o':
        state = state.copyWith(style: TextStyle(fontStyle: FontStyle.italic));
        break;
      case 'r':
        // Reset
        break;
      default:
        throw FormatException('Invalid FormattingCode');
    }

    return state;
  }
}
