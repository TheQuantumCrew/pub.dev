import 'package:pub_dev/domain/entity/package_entity.dart';

abstract class MockPackage {
  static const PackageEntity mockPackage = PackageEntity(
    packageName: 'riverpod',
    description: '''
A reactive caching and data-binding framework.
Riverpod makes working with asynchronous code a breeze.
''',
    publisher: 'dash-overflow.net',
  );

  static const List<PackageEntity> mockPackages = [
    mockPackage,
    mockPackage,
    mockPackage,
    mockPackage,
    mockPackage,
    mockPackage,
    mockPackage,
  ];
}
