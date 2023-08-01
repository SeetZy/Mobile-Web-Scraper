/*
  * Util/Dependency imports
 */
import 'dart:developer';
// ? https://pub.dev/packages/flutter_dotenv
import 'package:flutter_dotenv/flutter_dotenv.dart';
// ? https://pub.dev/packages/mongo_dart
import 'package:mongo_dart/mongo_dart.dart';

class Database {
  static Future<void> connectDb() async {
    String dbUrl = "";

    // Opens the .env file
    await dotenv.load(fileName: "assets/.env");

    dbUrl = dotenv.env['DB_URL'].toString();

    try {
      final db = Db(dbUrl);
      await db.open(secure: true);
    } catch (e) {
      log(e.toString());
    }
  }
}
