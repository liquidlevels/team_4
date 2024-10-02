// Widget de la lista de historias
import 'package:flutter/material.dart';
import 'package:page_instragram/widgets/avatar_story.dart';

class ListStory extends StatelessWidget {
  const ListStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *
          0.13, // 13% de la altura de la pantalla
      width: double.infinity, // Ancho completo
      padding: const EdgeInsets.only(left: 10),

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return AvatarStory(
            text: '$index Your Story ',
          );
        },
      ),
    );
  }
}
