import 'package:hooks_riverpod/hooks_riverpod.dart';

final expandId = ScopedProvider<int>((ref) => throw UnimplementedError());

final expandProviders =
    StateNotifierProvider.family((_, __) => ExpandSwitcher());

class ExpandSwitcher extends StateNotifier<bool> {
  ExpandSwitcher() : super(false);

  void toggle() => state = !state;
}
