import 'package:flutter/material.dart';
import 'package:task_aufgabe/navigator_4_6_2/screens/likes.dart';
import 'package:task_aufgabe/navigator_4_6_2/screens/news.dart';
import 'package:task_aufgabe/navigator_4_6_2/screens/profile.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const NewsScreen(),
    const Likes(),
    const Profil()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
        backgroundColor: Colors.lime,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        indicatorColor: Colors.lime,
        selectedIndex: currentIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.newspaper), label: 'News'),
          NavigationDestination(
              icon: Icon(Icons.heart_broken_sharp), label: 'Likes'),
          NavigationDestination(
              icon: Icon(Icons.person_off_outlined), label: 'Profile')
        ],
      ),
      body: Center(
        child: screens[currentIndex],
      ),
    );
  }
}
