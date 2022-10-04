import 'package:flutter/material.dart';

class BukuPanduanDetail extends StatelessWidget {
  final String title;
  final String description;
  const BukuPanduanDetail({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Text(description),
          ),
        ),
      ),
    );
  }
}
