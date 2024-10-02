import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          // Row con avatar y nombre de usuario
          const Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    'Username',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Contenedor para la publicación
          Container(
            height: MediaQuery.of(context).size.height * 0.50,
            width: double.infinity,
            color: Colors.grey,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      icon: const Icon(Icons.favorite_border),
                      onPressed: () {}),
                  IconButton(icon: const Icon(Icons.comment), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.send), onPressed: () {}),
                ],
              ),
              IconButton(
                  icon: const Icon(Icons.bookmark_border), onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
