// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerListState _$_$_ServerListStateFromJson(Map<String, dynamic> json) {
  return _$_ServerListState(
    servers: (json['servers'] as List<dynamic>?)
            ?.map((e) => ServerState.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_ServerListStateToJson(_$_ServerListState instance) =>
    <String, dynamic>{
      'servers': instance.servers,
    };

_$_ServerState _$_$_ServerStateFromJson(Map<String, dynamic> json) {
  return _$_ServerState(
    players: (json['players'] as List<dynamic>?)
            ?.map((e) => PlayerState.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    name: json['name'] as String? ?? '',
    playerCount: json['playerCount'] as int? ?? 0,
    online: json['online'] as bool? ?? false,
    version: json['version'] as String? ?? '',
    description: json['description'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_ServerStateToJson(_$_ServerState instance) =>
    <String, dynamic>{
      'players': instance.players,
      'name': instance.name,
      'playerCount': instance.playerCount,
      'online': instance.online,
      'version': instance.version,
      'description': instance.description,
    };
