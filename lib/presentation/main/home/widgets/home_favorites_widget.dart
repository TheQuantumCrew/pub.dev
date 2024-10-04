import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pub_dev/domain/entity/package_entity.dart';
import 'package:pub_dev/presentation/main/home/widgets/home_favorite_item.dart';

class HomeFavoritesWidget extends StatelessWidget {
  const HomeFavoritesWidget({
    required this.favorites,
    required this.onSelectPackage,
    required this.onTapPublisher,
    super.key,
  });

  final List<PackageEntity> favorites;
  final void Function(String packageName) onSelectPackage;
  final void Function(String packageName) onTapPublisher;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          onSelectPackage(favorites[index].packageName);
        },
        child: HomeFavoriteItem(
          package: favorites[index],
          onTapPublisher: () {
            onTapPublisher(favorites[index].publisher);
          },
        ),
      ),
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => const Gap(24),
      itemCount: favorites.length,
    );
  }
}
