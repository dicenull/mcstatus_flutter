import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mcstatus_flutter/models/player_state.dart';

part 'server_state.freezed.dart';
part 'server_state.g.dart';

@freezed
class ServerListState with _$ServerListState {
  factory ServerListState(
      {@Default(<ServerState>[]) List<ServerState> servers}) = _ServerListState;

  factory ServerListState.fromJson(Map<String, dynamic> json) =>
      _$ServerListStateFromJson(json);
}

@freezed
class ServerState with _$ServerState {
  factory ServerState({
    @Default(<PlayerState>[]) List<PlayerState> players,
    @Default('') String name,
    @Default(0) int playerCount,
    @Default(false) bool online,
    @Default('') String version,
    @Default('') String description,
  }) = _ServerState;

  factory ServerState.fromJson(Map<String, dynamic> json) =>
      _$ServerStateFromJson(json);
}
