import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:pub_dev/l10n/l10n.dart';
import 'package:pub_dev/presentation/router.gr.dart';
import 'package:pub_dev/presentation/splash/splash_notifier.dart';
import 'package:pub_dev/shared/generated/assets.gen.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _SplashView(
      onSplashCompleted: () {
        context
          ..router.popUntilRoot()
          ..pushRoute(const MainRoute());
      },
    );
  }
}

class _SplashView extends ConsumerStatefulWidget {
  const _SplashView({required this.onSplashCompleted});

  final void Function() onSplashCompleted;

  @override
  ConsumerState<_SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<_SplashView> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() {
    Future<void>.delayed(Duration.zero, () {
      ref.read(splashStateNotifierProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      splashStateNotifierProvider,
      (prev, next) {
        if (next.isSuccess) {
          widget.onSplashCompleted();
        }
      },
    );
    final l10n = context.l10n;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(flex: 2),
            Assets.images.icLauncherRound.image(
              width: 200,
              height: 200,
            ),
            const Spacer(),
            const Center(child: CircularProgressIndicator()),
            const Spacer(),
            Center(child: Text(l10n.splash_powered)),
            const Gap(16),
          ],
        ),
      ),
    );
  }
}
