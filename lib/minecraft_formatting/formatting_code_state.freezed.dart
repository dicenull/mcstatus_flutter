// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'formatting_code_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FormattingCodeStateTearOff {
  const _$FormattingCodeStateTearOff();

  _FormattingCodeState call({bool isObfuscated = false, TextStyle? style}) {
    return _FormattingCodeState(
      isObfuscated: isObfuscated,
      style: style,
    );
  }
}

/// @nodoc
const $FormattingCodeState = _$FormattingCodeStateTearOff();

/// @nodoc
mixin _$FormattingCodeState {
  bool get isObfuscated => throw _privateConstructorUsedError;
  TextStyle? get style => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormattingCodeStateCopyWith<FormattingCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormattingCodeStateCopyWith<$Res> {
  factory $FormattingCodeStateCopyWith(
          FormattingCodeState value, $Res Function(FormattingCodeState) then) =
      _$FormattingCodeStateCopyWithImpl<$Res>;
  $Res call({bool isObfuscated, TextStyle? style});
}

/// @nodoc
class _$FormattingCodeStateCopyWithImpl<$Res>
    implements $FormattingCodeStateCopyWith<$Res> {
  _$FormattingCodeStateCopyWithImpl(this._value, this._then);

  final FormattingCodeState _value;
  // ignore: unused_field
  final $Res Function(FormattingCodeState) _then;

  @override
  $Res call({
    Object? isObfuscated = freezed,
    Object? style = freezed,
  }) {
    return _then(_value.copyWith(
      isObfuscated:
          isObfuscated == freezed ? _value.isObfuscated : isObfuscated as bool,
      style: style == freezed ? _value.style : style as TextStyle?,
    ));
  }
}

/// @nodoc
abstract class _$FormattingCodeStateCopyWith<$Res>
    implements $FormattingCodeStateCopyWith<$Res> {
  factory _$FormattingCodeStateCopyWith(_FormattingCodeState value,
          $Res Function(_FormattingCodeState) then) =
      __$FormattingCodeStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isObfuscated, TextStyle? style});
}

/// @nodoc
class __$FormattingCodeStateCopyWithImpl<$Res>
    extends _$FormattingCodeStateCopyWithImpl<$Res>
    implements _$FormattingCodeStateCopyWith<$Res> {
  __$FormattingCodeStateCopyWithImpl(
      _FormattingCodeState _value, $Res Function(_FormattingCodeState) _then)
      : super(_value, (v) => _then(v as _FormattingCodeState));

  @override
  _FormattingCodeState get _value => super._value as _FormattingCodeState;

  @override
  $Res call({
    Object? isObfuscated = freezed,
    Object? style = freezed,
  }) {
    return _then(_FormattingCodeState(
      isObfuscated:
          isObfuscated == freezed ? _value.isObfuscated : isObfuscated as bool,
      style: style == freezed ? _value.style : style as TextStyle?,
    ));
  }
}

/// @nodoc
class _$_FormattingCodeState implements _FormattingCodeState {
  _$_FormattingCodeState({this.isObfuscated = false, this.style});

  @JsonKey(defaultValue: false)
  @override
  final bool isObfuscated;
  @override
  final TextStyle? style;

  @override
  String toString() {
    return 'FormattingCodeState(isObfuscated: $isObfuscated, style: $style)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormattingCodeState &&
            (identical(other.isObfuscated, isObfuscated) ||
                const DeepCollectionEquality()
                    .equals(other.isObfuscated, isObfuscated)) &&
            (identical(other.style, style) ||
                const DeepCollectionEquality().equals(other.style, style)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isObfuscated) ^
      const DeepCollectionEquality().hash(style);

  @JsonKey(ignore: true)
  @override
  _$FormattingCodeStateCopyWith<_FormattingCodeState> get copyWith =>
      __$FormattingCodeStateCopyWithImpl<_FormattingCodeState>(
          this, _$identity);
}

abstract class _FormattingCodeState implements FormattingCodeState {
  factory _FormattingCodeState({bool isObfuscated, TextStyle? style}) =
      _$_FormattingCodeState;

  @override
  bool get isObfuscated => throw _privateConstructorUsedError;
  @override
  TextStyle? get style => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FormattingCodeStateCopyWith<_FormattingCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
