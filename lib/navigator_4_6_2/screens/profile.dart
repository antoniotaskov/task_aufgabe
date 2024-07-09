import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text(
            "Profile",
            style: TextStyle(fontSize: 32),
          ),
          Icon(Icons.person, size: 48),
          Text(
            "Max Mustermann",
            style: TextStyle(fontSize: 32),
          )
        ],
      ),
    );
  }
}
