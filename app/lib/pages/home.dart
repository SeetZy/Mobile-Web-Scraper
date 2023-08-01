/*
  * Util/Dependency imports
 */
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController topicController = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Use the web scraper to search a desired topic",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: TextField(
            controller: topicController,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.search,
              ),
              hintText: "Topic to search",
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
