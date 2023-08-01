/*
  * Util/Dependency imports
 */
import 'package:flutter/material.dart';
import 'package:app/db/db.dart';

/*
  * Page/Component imports
 */
import 'package:app/components/baseplate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initializes the database
  Database.connectDb();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
      ),
      home: const Baseplate(),
    );
  }
}
