/*
  * Util/dependency imports
 */
import 'package:flutter/material.dart';

/*
  * Page/component imports
 */
import 'package:app/pages/home.dart';
import 'package:app/pages/saved.items.dart';

class NavUtils {
  // Page navigation index
  static int index = 0;

  // Pages that the navigation bar uses
  static final pages = [
    const HomePage(),
    const SavedItemsPage(),
  ];

  // Navigation bar buttons
  static final items = [
    const Icon(
      Icons.search,
      color: Colors.white,
    ),
    const Icon(
      Icons.save_rounded,
      color: Colors.white,
    ),
  ];
}
