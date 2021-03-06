import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mcstatus_flutter/atoms/named_counter.dart';
import 'package:mcstatus_flutter/models/server_provider.dart';

class HomeScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: useProvider(serverProvider.state).when(
        success: (data) => Center(
          child: Column(
            children: data.servers
                .map((state) => NamedCounter(
                      bgColor: Theme.of(context).accentColor,
                      badgeColor:
                          state.online ? Colors.green : Colors.redAccent,
                      text: state.name,
                      count: state.playerCount,
                    ))
                .toList(),
          ),
        ),
        waiting: () => Center(
          child: CircularProgressIndicator(),
        ),
        failure: (_) => Container(),
      ),
    );
  }
}
