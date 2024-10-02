import 'package:flutter/material.dart';

class IcoButton extends StatelessWidget {
  const IcoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 37,
          width: 45,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.expand_more),
            ),
          ), 
        );
  }
}