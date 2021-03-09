import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mcstatus_flutter/atoms/named_counter.dart';
import 'package:mcstatus_flutter/models/server_provider.dart';
import 'package:mcstatus_flutter/organisms/server_card.dart';
import 'package:mcstatus_flutter/organisms/server_list_body.dart';

class HomeScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: useProvider(serverProvider.state).when(
          success: (data) => SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ServerListBody(
              cardList: data.servers.map(
                (state) => ServerCard(
                  namedCounter: NamedCounter(
                    bgColor: Theme.of(context).accentColor,
                    badgeColor: state.online ? Colors.green : Colors.redAccent,
                    text: state.name,
                    count: state.playerCount,
                  ),
                  text: state.description,
                ),
              ),
            ),
          ),
          waiting: () => Center(
            child: CircularProgressIndicator(),
          ),
          failure: (_) => Container(),
        ),
      ),
    );
  }
}
