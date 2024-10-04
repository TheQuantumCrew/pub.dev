import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pub_dev/di/di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  asExtension: false,
  initializerName: 'initGetIt',
)
Future<void> configureDependencies() async => initGetIt(getIt);
