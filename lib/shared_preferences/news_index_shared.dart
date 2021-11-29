import 'package:shared_preferences/shared_preferences.dart';

class NewsIndexShared {
  NewsIndexShared();
  static setLastIndex(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('lastIndex', index);
  }

  static Future<int> getLastIndex() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('lastIndex') ?? 0;
  }

  static clear() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }
}
