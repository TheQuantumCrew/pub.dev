import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashStateNotifierProvider =
    AutoDisposeStateNotifierProvider<SplashStateNotifier, SplashStateStatus>(
  (_) => SplashStateNotifier(),
);

class SplashStateNotifier extends StateNotifier<SplashStateStatus> {
  SplashStateNotifier() : super(SplashStateStatus.initial);

  void init() {
    Future<void>.delayed(const Duration(seconds: 2), () {
      state = SplashStateStatus.success;
    });
  }
}

enum SplashStateStatus {
  initial,
  success,
  error;

  bool get isInitial => this == SplashStateStatus.initial;

  bool get isSuccess => this == SplashStateStatus.success;

  bool get isError => this == SplashStateStatus.error;
}
