import 'package:injectable/injectable.dart';
import 'package:pub_api_client/pub_api_client.dart';

@module
abstract class PubDevModule {
  PubClient get pubClient => PubClient();
}
