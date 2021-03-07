import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:mcstatus_flutter/models/result.dart';
import 'package:mcstatus_flutter/models/server_state.dart';

final serverProvider = StateNotifierProvider((ref) => ServerController());

class ServerController extends StateNotifier<Result<ServerListState>>
    with LocatorMixin {
  ServerController() : super(Result.waiting()) {
    _fetch();
  }

  Future _fetch() async {
    final resp =
        await http.get(Uri.https('mc.oykdn.com', 'status/api/servers'));

    final data = ServerListState.fromJson(
      jsonDecode(utf8.decode(resp.bodyBytes)),
    );

    state = Success<ServerListState>(data);
  }
}
