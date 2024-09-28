import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashStateNotifierProvider =
    AutoDisposeStateNotifierProvider<SplashStateNotifier, SplashStateStatus>(
  (_) => SplashStateNotifier(),
);

class SplashStateNotifier extends StateNotifier<SplashStateStatus> {
  SplashStateNotifier()
      : super(
          SplashStateStatus.initial,
        );

  Future<void> init() async {
    await Future<void>.delayed(
      const Duration(
        seconds: 2,
      ),
    );
    state = SplashStateStatus.success;
  }
}

enum SplashStateStatus {
  initial,
  success,
  error;
}
