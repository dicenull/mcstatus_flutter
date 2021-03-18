import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mcstatus_flutter/models/expand_provider.dart';

class ExpandButton extends HookWidget {
  final VoidCallback? onPressed;

  const ExpandButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final id = useProvider(expandId);
    final expandProvider = expandProviders(id);
    final expand = useProvider(expandProvider.state);

    return IconButton(
      icon: expand ? Icon(Icons.expand_less) : Icon(Icons.expand_more),
      onPressed: () {
        context.read(expandProvider).toggle();
        onPressed?.call();
      },
    );
  }
}
