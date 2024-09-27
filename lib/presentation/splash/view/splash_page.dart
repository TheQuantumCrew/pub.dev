import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pub_dev/l10n/l10n.dart';
import 'package:pub_dev/presentation/router.gr.dart';
import 'package:pub_dev/presentation/splash/notifier/splash_notifier.dart';
import 'package:pub_dev/shared/generated/assets.gen.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() {
    Future<void>.delayed(
      Duration.zero,
    ).then((_) {
      ref.read(splashStateNotifierProvider.notifier).init();
    });
  }

  void _registerListeners({
    required BuildContext cContext,
  }) {
    ref.listen(
      splashStateNotifierProvider,
      (prev, next) {
        if (next == SplashStateStatus.success) {
          cContext.replaceRoute(
            const MainRoute(),
          );
        }
      },
      onError: (error, stackTrace) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    _registerListeners(cContext: context);
    final l10n = context.l10n;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Assets.images.icLauncherRound.image(
              width: 200,
              height: 200,
            ),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
            Text(l10n.splash_powered),
            const SizedBox(
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}
