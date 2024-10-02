import 'package:flutter/material.dart';
import 'package:view_team_4/constants/constants.dart';
import 'package:view_team_4/widgets/button_search.dart';
import 'package:view_team_4/widgets/photo_gallery.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, 
        title: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200], 
            borderRadius: BorderRadius.circular(8),
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search), 
              contentPadding: EdgeInsets.all(10),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.view_in_ar, color: Colors.black), 
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
           Flexible(child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              const SizedBox(height: 30),
              SizedBox(
                height: Responsive.heightPercentage(context, 0.04), 
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ButtonSearch(Icons.tv, 'IGTV'),
                    ButtonSearch(Icons.shopping_bag, 'Shop'),
                    ButtonSearch(Icons.science, 'Science & Tech'),
                    ButtonSearch(Icons.live_tv, 'TV'),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const PhotoGallery(),
              ),
            ],
           ),
           ),
          ],
        ),
      ),
    );
  }
}

