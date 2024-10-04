// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pub_api_client/pub_api_client.dart' as _i479;
import 'package:pub_dev/di/modules/pub_dev_module.dart' as _i824;
import 'package:pub_dev/domain/repository/pub_dev_repository.dart' as _i333;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final pubDevModule = _$PubDevModule();
  gh.lazySingleton<_i479.PubClient>(() => pubDevModule.pubClient);
  gh.lazySingleton<_i333.PubDevRepository>(
      () => _i333.PubDevRepository(pubClient: gh<_i479.PubClient>()));
  return getIt;
}

class _$PubDevModule extends _i824.PubDevModule {}
