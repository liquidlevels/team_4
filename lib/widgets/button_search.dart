
import 'package:flutter/material.dart';

class ButtonSearch extends StatelessWidget {
  final String text;
  final IconData icon;
  const ButtonSearch(
    this.icon,
    this.text,{
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.black),
          const Padding(padding: EdgeInsets.only(right: 8),),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}