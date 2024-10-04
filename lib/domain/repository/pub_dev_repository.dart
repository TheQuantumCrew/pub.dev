import 'package:injectable/injectable.dart';
import 'package:pub_api_client/pub_api_client.dart';

@lazySingleton
class PubDevRepository {
  PubDevRepository({
    required PubClient pubClient,
  }) : _pubClient = pubClient;

  late final PubClient _pubClient;

  Future<List<String>> getFavorites() async {
    return _pubClient.fetchFlutterFavorites();
  }

  Future<SearchResults> getTops() async {
    return _pubClient.search(
      '',
      sort: SearchOrder.popularity,
    );
  }
}
