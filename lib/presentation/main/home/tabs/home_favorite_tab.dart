import 'package:flutter/material.dart';

class HomeFavoriteTab extends StatefulWidget {
  const HomeFavoriteTab({super.key});

  @override
  State<HomeFavoriteTab> createState() => _HomeFavoriteTabState();
}

class _HomeFavoriteTabState extends State<HomeFavoriteTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Container(
        width: 100,
        height: 100,
        color: Colors.grey,
        margin: const EdgeInsets.all(12),
      ),
    );
  }
}
