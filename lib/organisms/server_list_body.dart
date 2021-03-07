import 'package:flutter/material.dart';
import 'package:mcstatus_flutter/organisms/server_card.dart';

class ServerListBody extends StatelessWidget {
  final Iterable<ServerCard> cardList;

  const ServerListBody({Key? key, required this.cardList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: cardList
          .map(
            (card) => Padding(
              padding: const EdgeInsets.all(8),
              child: card,
            ),
          )
          .toList(),
    );
  }
}
