import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mcstatus_flutter/models/server_state.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () async {
            final resp =
                await http.get(Uri.https('mc.oykdn.com', 'status/api/servers'));

            final json = ServerListState.fromJson(jsonDecode(resp.body));
          },
          child: Text('fetch'),
        ),
      ],
    );
  }
}
