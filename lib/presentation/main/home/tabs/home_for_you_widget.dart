import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:pub_dev/presentation/main/home/home_notifier.dart';
import 'package:pub_dev/presentation/main/home/tabs/home_favorite_tab.dart';

class HomeForYouWidget extends ConsumerStatefulWidget {
  const HomeForYouWidget({super.key});

  @override
  ConsumerState<HomeForYouWidget> createState() => _HomeForYouWidgetState();
}

class _HomeForYouWidgetState extends ConsumerState<HomeForYouWidget>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(
      homeStateNotifierProvider,
    );
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: 36,
            child: ListView.separated(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(12),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  ref.read(homeStateNotifierProvider.notifier).onChangeTab(
                        index: index,
                      );
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: index == state.indexTab
                        ? Theme.of(context).primaryColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(),
                  ),
                  child: Text(
                    'Tab $index',
                    style: TextStyle(
                      color:
                          index == state.indexTab ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          IndexedStack(
            index: state.indexTab,
            children: [
              Visibility(
                visible: state.indexTab == 0,
                child: const HomeFavoriteTab(),
              ),
              Visibility(
                visible: state.indexTab == 1,
                child: const HomeFavoriteTab(),
              ),
              Visibility(
                visible: state.indexTab == 2,
                child: const HomeFavoriteTab(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
