import 'dart:convert';

import 'package:flutter/services.dart';

Future<String> appUrl() async {
  final contents = await rootBundle.loadString(
    'assets/config/baseurl.json',
  );

  // decode our json
  final json = jsonDecode(contents);

  // convert our JSON into an instance of our AppConfig class
  return json['apiUrl'];
}
