import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:pub_dev/presentation/main/home/home_notifier.dart';
import 'package:pub_dev/presentation/main/home/tabs/home_for_you_widget.dart';
import 'package:pub_dev/presentation/main/home/widgets/home_favorites_widget.dart';
import 'package:pub_dev/presentation/router.gr.dart';
import 'package:pub_dev/shared/generated/assets.gen.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _HomeView(
      onSelectPackage: (packageName) {
        context
          ..router
          ..pushRoute(
            DetailRoute(packageName: packageName),
          );
      },
      onTapPublisher: (publisherName) {
        context
          ..router
          ..pushRoute(
            PublisherRoute(publisherName: publisherName),
          );
      },
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView({
    required this.onSelectPackage,
    required this.onTapPublisher,
  });

  final void Function(String packageName) onSelectPackage;
  final void Function(String publisherName) onTapPublisher;

  @override
  ConsumerState<_HomeView> createState() => __HomeViewState();
}

class __HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    _initState();
  }

  void _initState() {
    Future<void>.delayed(Duration.zero, () {
      ref.read(homeStateNotifierProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeStateNotifierProvider);
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).viewPadding.top,
      ),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.icons.icDartOriginal.image(
                  width: 40,
                  height: 40,
                ),
                const Gap(8),
                const Text(
                  ' pub.dev',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: HomeFavoritesWidget(
              favorites: state.tops,
              onSelectPackage: widget.onSelectPackage,
              onTapPublisher: widget.onTapPublisher,
            ),
          ),
        ],
      ),
    );
  }
}

// SliverChildBuilderDelegate(
//             (context, index) => Container(
//               padding: const EdgeInsets.all(12),
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ,
//                     const Gap(24),
//                     const Gap(24),
//                     const Text(
//                       'For you',
//                       style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const Gap(12),
//                     const HomeForYouWidget(),
//                   ],
//                 ),
//               ),
//             ),
//           )