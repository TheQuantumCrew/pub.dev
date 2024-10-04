import 'package:pub_api_client/pub_api_client.dart';

extension XSearchPackage on SearchResults {
  List<String> get toListPackage => packages
      .map(
        (e) => e.package,
      )
      .toList();
}
