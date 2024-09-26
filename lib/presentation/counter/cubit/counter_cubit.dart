import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateNotifierProvider =
    AutoDisposeStateNotifierProvider<CounterStateNotifier, int>((_) {
  return CounterStateNotifier();
});

class CounterStateNotifier extends StateNotifier<int> {
  CounterStateNotifier() : super(0);

  void increment() => state += 1;

  void decrement() => state -= 1;
}
