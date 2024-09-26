import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pub_dev/presentation/router.gr.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('Go to counter'),
          onPressed: () {
            context.pushRoute(const CounterRoute());
          },
        ),
      ),
    );
  }
}
