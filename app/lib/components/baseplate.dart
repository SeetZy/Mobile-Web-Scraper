/*
  * Util/Dependency imports
 */
import 'package:flutter/material.dart';
// ? https://pub.dev/packages/curved_navigation_bar
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

/*
  * Page/Component imports
 */
import 'package:app/pages/home.dart';
import 'package:app/pages/saved.items.dart';

class Baseplate extends StatefulWidget {
  const Baseplate({super.key});
  @override
  State<Baseplate> createState() => _BaseplateState();
}

class _BaseplateState extends State<Baseplate> {
  // Page navigation index
  int index = 0;

  // Pages that the navigation bar uses
  final pages = [
    const HomePage(),
    const SavedItemsPage(),
  ];

  // Navigation bar buttons
  final items = [
    const Icon(
      Icons.search,
      color: Colors.white,
    ),
    const Icon(
      Icons.save_rounded,
      color: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pages[index]),
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        backgroundColor: Colors.white,
        color: Colors.deepPurple,
        index: index,
        // Navigates to a specific page based on the index
        onTap: (index) => setState(() => this.index = index),
        items: items,
      ),
    );
  }
}
