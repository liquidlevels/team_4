
import 'package:flutter/material.dart';

class BoxNum extends StatelessWidget {
  final String text;
  final String label;
  const BoxNum(
    this.text,
    this.label,{
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(label)
      ],
    );
  }
}
