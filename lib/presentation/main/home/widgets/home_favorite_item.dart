import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:pub_dev/domain/entity/package_entity.dart';
import 'package:pub_dev/shared/generated/assets.gen.dart';
import 'package:share_plus/share_plus.dart';

class HomeFavoriteItem extends StatelessWidget {
  const HomeFavoriteItem({
    required this.package,
    required this.onTapPublisher,
    super.key,
  });

  final PackageEntity package;
  final void Function() onTapPublisher;

  void _onShare() {
    Share.shareUri(
      Uri.parse(
        'https://pub.dev/packages/${package.packageName}',
      ),
    );
  }

  Future<void> _onCopyPackage() async {
    // TODO: Add version here
    await Clipboard.setData(
      ClipboardData(
        text: package.packageName,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width * 0.8,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: Assets.icons.icDartGreen.image(
              width: 40,
              height: 40,
            ),
          ),
          const Gap(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                package.packageName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const Gap(8),
              GestureDetector(
                onTap: _onCopyPackage,
                child: PhosphorIcon(
                  PhosphorIconsRegular.copy,
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
                  size: 20,
                ),
              ),
            ],
          ),
          const Gap(8),
          Flexible(
            fit: FlexFit.tight,
            child: Text(
              package.description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
          ),
          const Gap(8),
          const Spacer(),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  //TODO:  Show tool tips
                },
                child: PhosphorIcon(
                  PhosphorIconsRegular.sealCheck,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const Gap(8),
              GestureDetector(
                onTap: onTapPublisher,
                child: Text(
                  package.publisher,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Spacer(),
              GestureDetector(
                onTap: _onShare,
                child: PhosphorIcon(
                  PhosphorIconsRegular.shareNetwork,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
