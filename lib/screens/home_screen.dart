import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mcstatus_flutter/atoms/expand_button.dart';
import 'package:mcstatus_flutter/atoms/named_counter.dart';
import 'package:mcstatus_flutter/models/expand_provider.dart';
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
              cardList: data.servers.asMap().entries.map(
                (entry) {
                  final state = entry.value;
                  final id = entry.key;

                  return ServerCard(
                    namedCounter: NamedCounter(
                      bgColor: Theme.of(context).accentColor,
                      badgeColor:
                          state.online ? Colors.green : Colors.redAccent,
                      text: state.name,
                      count: state.playerCount,
                    ),
                    text: state.description,
                    button: (state.playerCount > 0)
                        ? ProviderScope(
                            key: ValueKey(id),
                            overrides: [
                              expandId.overrideWithValue(id),
                            ],
                            child: ExpandButton(),
                          )
                        : SizedBox.shrink(),
                  );
                },
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
