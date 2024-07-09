import 'package:flutter/material.dart';

class Likes extends StatelessWidget {
  const Likes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Likes",
          style: TextStyle(fontSize: 35),
        ),
        SizedBox(height: 16),
        Center(
            child: Text("Hier findest du deine geklikten \nNachrichten.",
                textAlign: TextAlign.center)),
      ],
    );
  }
}
