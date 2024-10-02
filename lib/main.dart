import 'package:flutter/material.dart';
import 'package:view_team_4/screens/home.dart';
import 'package:view_team_4/screens/profile.dart';
import 'package:view_team_4/screens/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      home: Scaffold(
      body: 
        const Home(),
        // const Profile(),
        // const Search(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const[
            BottomNavigationBarItem(icon: Icon(Icons.home, size: 35, color: Colors.black,), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search, size: 35, color: Colors.black), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.add, size: 35, color: Colors.black), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined, size: 35, color: Colors.black), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined, size: 35, color: Colors.black), label: ''),
          ],
        ),
    )
    );
  }
}