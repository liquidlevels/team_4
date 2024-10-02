import 'package:flutter/material.dart';
import 'package:view_team_4/widgets/box_num.dart';
import 'package:view_team_4/widgets/buttonn.dart';
import 'package:view_team_4/widgets/icon_button.dart';
import 'package:view_team_4/widgets/list_story.dart';
import 'package:view_team_4/widgets/photo_gallery.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('username'),
            Icon(Icons.expand_more),
          ],
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.menu, size: 32),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Flexible(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.grey,
                                ),
                                SizedBox(height: 8),
                                Text('Your name'),
                                Text('Description'),
                                Text('Bio'),
                                Text('www.website.com', style: TextStyle(color:   Colors.blueAccent),),
                              ],
                            ),
                            SizedBox(width: 22),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  BoxNum('55', 'Posts'),
                                  SizedBox(width: 20),
                                  BoxNum('152', 'Followers'),
                                  SizedBox(width: 20),
                                  BoxNum('37', 'Following'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 160,
                              child: Buttonn('Following')
                            ),
                            SizedBox(
                              width: 160,
                              child: Buttonn('Message')
                            ),
                            SizedBox(
                              child: IcoButton()
                            )
                          ],
                        ),
                        const ListStory(),

                        Container(
                          decoration: 
                            const BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  color: Colors.grey,
                                  width: 1
                                )
                              )
                            ), 
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    decoration: 
                                      const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: Color.fromARGB(255, 105, 105, 105),
                                            width: 1
                                          )
                                        )
                                      ), 
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    alignment: Alignment.center,
                                    child: const Icon(Icons.grid_on, size: 28),
                                  ),
                                
                              ),
                              Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    alignment: Alignment.center,
                                    child: const Icon(Icons.account_box_outlined, size: 28),
                                  ),
                              
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const PhotoGallery(),
                      ],
                    ),
                  ],
                )
              )
            ],
          ),
        )
      )
    );
  }
}
