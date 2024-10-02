import 'package:flutter/material.dart';
import 'package:page_instragram/widgets/avatar_story.dart';
import 'package:page_instragram/widgets/list_story.dart';
import 'package:page_instragram/widgets/post_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: const Text('Instagram', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: const Icon(Icons.camera, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.send, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10),
              // Story List
              child: ListStory(),
            ),
            // Post List
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: const [
                  PostWidget(),
                  PostWidget(),
                  PostWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
