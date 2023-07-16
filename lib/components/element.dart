import 'package:flutter/material.dart';

class ContentElement extends StatelessWidget {
  final String url;

  const ContentElement(this.url, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        url,
        fit: BoxFit.cover,
        width: 135,
        height: 240,
      ),
    );
  }
}
