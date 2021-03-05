// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'server_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerListState _$ServerListStateFromJson(Map<String, dynamic> json) {
  return _ServerListState.fromJson(json);
}

/// @nodoc
class _$ServerListStateTearOff {
  const _$ServerListStateTearOff();

  _ServerListState call({List<ServerState> servers = const <ServerState>[]}) {
    return _ServerListState(
      servers: servers,
    );
  }

  ServerListState fromJson(Map<String, Object> json) {
    return ServerListState.fromJson(json);
  }
}

/// @nodoc
const $ServerListState = _$ServerListStateTearOff();

/// @nodoc
mixin _$ServerListState {
  List<ServerState> get servers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerListStateCopyWith<ServerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerListStateCopyWith<$Res> {
  factory $ServerListStateCopyWith(
          ServerListState value, $Res Function(ServerListState) then) =
      _$ServerListStateCopyWithImpl<$Res>;
  $Res call({List<ServerState> servers});
}

/// @nodoc
class _$ServerListStateCopyWithImpl<$Res>
    implements $ServerListStateCopyWith<$Res> {
  _$ServerListStateCopyWithImpl(this._value, this._then);

  final ServerListState _value;
  // ignore: unused_field
  final $Res Function(ServerListState) _then;

  @override
  $Res call({
    Object? servers = freezed,
  }) {
    return _then(_value.copyWith(
      servers:
          servers == freezed ? _value.servers : servers as List<ServerState>,
    ));
  }
}

/// @nodoc
abstract class _$ServerListStateCopyWith<$Res>
    implements $ServerListStateCopyWith<$Res> {
  factory _$ServerListStateCopyWith(
          _ServerListState value, $Res Function(_ServerListState) then) =
      __$ServerListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ServerState> servers});
}

/// @nodoc
class __$ServerListStateCopyWithImpl<$Res>
    extends _$ServerListStateCopyWithImpl<$Res>
    implements _$ServerListStateCopyWith<$Res> {
  __$ServerListStateCopyWithImpl(
      _ServerListState _value, $Res Function(_ServerListState) _then)
      : super(_value, (v) => _then(v as _ServerListState));

  @override
  _ServerListState get _value => super._value as _ServerListState;

  @override
  $Res call({
    Object? servers = freezed,
  }) {
    return _then(_ServerListState(
      servers:
          servers == freezed ? _value.servers : servers as List<ServerState>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ServerListState implements _ServerListState {
  _$_ServerListState({this.servers = const <ServerState>[]});

  factory _$_ServerListState.fromJson(Map<String, dynamic> json) =>
      _$_$_ServerListStateFromJson(json);

  @JsonKey(defaultValue: const <ServerState>[])
  @override
  final List<ServerState> servers;

  @override
  String toString() {
    return 'ServerListState(servers: $servers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerListState &&
            (identical(other.servers, servers) ||
                const DeepCollectionEquality().equals(other.servers, servers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(servers);

  @JsonKey(ignore: true)
  @override
  _$ServerListStateCopyWith<_ServerListState> get copyWith =>
      __$ServerListStateCopyWithImpl<_ServerListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServerListStateToJson(this);
  }
}

abstract class _ServerListState implements ServerListState {
  factory _ServerListState({List<ServerState> servers}) = _$_ServerListState;

  factory _ServerListState.fromJson(Map<String, dynamic> json) =
      _$_ServerListState.fromJson;

  @override
  List<ServerState> get servers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServerListStateCopyWith<_ServerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

ServerState _$ServerStateFromJson(Map<String, dynamic> json) {
  return _ServerState.fromJson(json);
}

/// @nodoc
class _$ServerStateTearOff {
  const _$ServerStateTearOff();

  _ServerState call(
      {List<PlayerState> players = const <PlayerState>[],
      String name = '',
      int playerCount = 0,
      bool online = false,
      String version = '',
      String description = ''}) {
    return _ServerState(
      players: players,
      name: name,
      playerCount: playerCount,
      online: online,
      version: version,
      description: description,
    );
  }

  ServerState fromJson(Map<String, Object> json) {
    return ServerState.fromJson(json);
  }
}

/// @nodoc
const $ServerState = _$ServerStateTearOff();

/// @nodoc
mixin _$ServerState {
  List<PlayerState> get players => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get playerCount => throw _privateConstructorUsedError;
  bool get online => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerStateCopyWith<ServerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerStateCopyWith<$Res> {
  factory $ServerStateCopyWith(
          ServerState value, $Res Function(ServerState) then) =
      _$ServerStateCopyWithImpl<$Res>;
  $Res call(
      {List<PlayerState> players,
      String name,
      int playerCount,
      bool online,
      String version,
      String description});
}

/// @nodoc
class _$ServerStateCopyWithImpl<$Res> implements $ServerStateCopyWith<$Res> {
  _$ServerStateCopyWithImpl(this._value, this._then);

  final ServerState _value;
  // ignore: unused_field
  final $Res Function(ServerState) _then;

  @override
  $Res call({
    Object? players = freezed,
    Object? name = freezed,
    Object? playerCount = freezed,
    Object? online = freezed,
    Object? version = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      players:
          players == freezed ? _value.players : players as List<PlayerState>,
      name: name == freezed ? _value.name : name as String,
      playerCount:
          playerCount == freezed ? _value.playerCount : playerCount as int,
      online: online == freezed ? _value.online : online as bool,
      version: version == freezed ? _value.version : version as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class _$ServerStateCopyWith<$Res>
    implements $ServerStateCopyWith<$Res> {
  factory _$ServerStateCopyWith(
          _ServerState value, $Res Function(_ServerState) then) =
      __$ServerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PlayerState> players,
      String name,
      int playerCount,
      bool online,
      String version,
      String description});
}

/// @nodoc
class __$ServerStateCopyWithImpl<$Res> extends _$ServerStateCopyWithImpl<$Res>
    implements _$ServerStateCopyWith<$Res> {
  __$ServerStateCopyWithImpl(
      _ServerState _value, $Res Function(_ServerState) _then)
      : super(_value, (v) => _then(v as _ServerState));

  @override
  _ServerState get _value => super._value as _ServerState;

  @override
  $Res call({
    Object? players = freezed,
    Object? name = freezed,
    Object? playerCount = freezed,
    Object? online = freezed,
    Object? version = freezed,
    Object? description = freezed,
  }) {
    return _then(_ServerState(
      players:
          players == freezed ? _value.players : players as List<PlayerState>,
      name: name == freezed ? _value.name : name as String,
      playerCount:
          playerCount == freezed ? _value.playerCount : playerCount as int,
      online: online == freezed ? _value.online : online as bool,
      version: version == freezed ? _value.version : version as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ServerState implements _ServerState {
  _$_ServerState(
      {this.players = const <PlayerState>[],
      this.name = '',
      this.playerCount = 0,
      this.online = false,
      this.version = '',
      this.description = ''});

  factory _$_ServerState.fromJson(Map<String, dynamic> json) =>
      _$_$_ServerStateFromJson(json);

  @JsonKey(defaultValue: const <PlayerState>[])
  @override
  final List<PlayerState> players;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: 0)
  @override
  final int playerCount;
  @JsonKey(defaultValue: false)
  @override
  final bool online;
  @JsonKey(defaultValue: '')
  @override
  final String version;
  @JsonKey(defaultValue: '')
  @override
  final String description;

  @override
  String toString() {
    return 'ServerState(players: $players, name: $name, playerCount: $playerCount, online: $online, version: $version, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerState &&
            (identical(other.players, players) ||
                const DeepCollectionEquality()
                    .equals(other.players, players)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.playerCount, playerCount) ||
                const DeepCollectionEquality()
                    .equals(other.playerCount, playerCount)) &&
            (identical(other.online, online) ||
                const DeepCollectionEquality().equals(other.online, online)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(players) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(playerCount) ^
      const DeepCollectionEquality().hash(online) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$ServerStateCopyWith<_ServerState> get copyWith =>
      __$ServerStateCopyWithImpl<_ServerState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServerStateToJson(this);
  }
}

abstract class _ServerState implements ServerState {
  factory _ServerState(
      {List<PlayerState> players,
      String name,
      int playerCount,
      bool online,
      String version,
      String description}) = _$_ServerState;

  factory _ServerState.fromJson(Map<String, dynamic> json) =
      _$_ServerState.fromJson;

  @override
  List<PlayerState> get players => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get playerCount => throw _privateConstructorUsedError;
  @override
  bool get online => throw _privateConstructorUsedError;
  @override
  String get version => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServerStateCopyWith<_ServerState> get copyWith =>
      throw _privateConstructorUsedError;
}
