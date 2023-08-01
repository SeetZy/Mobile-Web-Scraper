/*
  * Util/Dependency imports
 */
import 'package:flutter/material.dart';
// ? https://pub.dev/packages/curved_navigation_bar
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:app/utils/nav.utils.dart';

class Baseplate extends StatefulWidget {
  const Baseplate({super.key});
  @override
  State<Baseplate> createState() => _BaseplateState();
}

class _BaseplateState extends State<Baseplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: NavUtils.pages[NavUtils.index]),
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        backgroundColor: Colors.white,
        color: Colors.deepPurple,
        index: NavUtils.index,
        // Navigates to a specific page based on the index
        onTap: (index) => setState(() => NavUtils.index = index),
        items: NavUtils.items,
      ),
    );
  }
}
