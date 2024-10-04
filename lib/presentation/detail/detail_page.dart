import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetailPage extends StatefulWidget {
  const DetailPage({
    required this.packageName,
    super.key,
  });

  final String packageName;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.packageName),
      ),
    );
  }
}
