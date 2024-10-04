import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pub_dev/di/di.dart';
import 'package:pub_dev/domain/entity/mocks/mock_package.dart';
import 'package:pub_dev/domain/entity/package_entity.dart';
import 'package:pub_dev/domain/repository/pub_dev_repository.dart';

final homeStateNotifierProvider =
    AutoDisposeStateNotifierProvider<HomeStateNotifier, HomeState>(
  (_) => HomeStateNotifier(
    pubDevRepository: getIt.get<PubDevRepository>(),
  ),
);

class HomeStateNotifier extends StateNotifier<HomeState> {
  HomeStateNotifier({
    required PubDevRepository pubDevRepository,
  })  : _pubDevRepository = pubDevRepository,
        super(
          HomeState.initial(),
        );

  final PubDevRepository _pubDevRepository;

  Future<void> init() async {
    // final result = await _pubDevRepository.getFavorites();
    // final tops = await _pubDevRepository.getTops();
    await Future<void>.delayed(const Duration(seconds: 2));
    state = state.copyWith(
      favorites: MockPackage.mockPackages,
      tops: MockPackage.mockPackages,
    );
  }

  Future<void> onChangeTab({required int index}) async {
    state = state.copyWith(
      indexTab: index,
    );
  }
}

class HomeState {
  HomeState({
    required this.favorites,
    required this.tops,
    required this.indexTab,
  });

  factory HomeState.initial() {
    return HomeState(
      favorites: [],
      tops: [],
      indexTab: 0,
    );
  }

  final List<PackageEntity> favorites;
  final List<PackageEntity> tops;
  final int indexTab;

  HomeState copyWith({
    List<PackageEntity>? favorites,
    List<PackageEntity>? tops,
    int? indexTab,
  }) {
    return HomeState(
      favorites: favorites ?? this.favorites,
      tops: tops ?? this.tops,
      indexTab: indexTab ?? this.indexTab,
    );
  }
}
