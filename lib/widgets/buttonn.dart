import 'package:flutter/material.dart';

class Buttonn extends StatelessWidget {
  final String text;
  const Buttonn(
    this.text,
    {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(onPressed: () {},
       style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor:Colors.black,
       ),
       child: Text(text),
       ),
    );
  }
}