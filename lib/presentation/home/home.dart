import 'package:MD_Shorts/presentation/home/mobile/news_mobile.dart';
import 'package:MD_Shorts/presentation/home/web/news_web.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? const Scaffold(
            body: NewsWeb(),
          )
        : const Scaffold(
            backgroundColor: Colors.white,
            body: NewsMobile(),
          );
  }

  double widthGetMethod(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? 768
        : MediaQuery.of(context).size.width;
  }
}
