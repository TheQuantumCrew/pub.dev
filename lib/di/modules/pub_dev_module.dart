import 'package:injectable/injectable.dart';
import 'package:pub_api_client/pub_api_client.dart';

@module
abstract class PubDevModule {
  @lazySingleton
  PubClient get pubClient => PubClient();
}
