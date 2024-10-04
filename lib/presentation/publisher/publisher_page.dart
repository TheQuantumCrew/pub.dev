import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PublisherPage extends StatefulWidget {
  const PublisherPage({
    required this.publisherName,
    super.key,
  });

  final String publisherName;

  @override
  State<PublisherPage> createState() => _PublisherPageState();
}

class _PublisherPageState extends State<PublisherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.publisherName),
        centerTitle: true,
      ),
    );
  }
}
