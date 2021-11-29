import 'package:MD_Shorts/domain/category/category.dart';
import 'package:MD_Shorts/presentation/core/custom_bottom_navigation_bar.dart';
import 'package:MD_Shorts/presentation/home/mobile/search_screen/home_page_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';

class InterestScreen extends StatelessWidget {
  const InterestScreen(
      {Key? key, required this.mediaWidth, required this.myCategories})
      : super(key: key);
  final double mediaWidth;
  final List<UserCategory> myCategories;
  @override
  Widget build(BuildContext context) {
    var mediaWidth = widthGetMethod(context);
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: mediaWidth,
          child: MediaQuery.of(context).size.width > 768
              ? Card(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.07),
                  child: Content(
                      mediaWidth: mediaWidth, myCategories: myCategories),
                )
              : Content(mediaWidth: mediaWidth, myCategories: myCategories),
        ),
      ),
    );
  }

  double widthGetMethod(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? 768
        : MediaQuery.of(context).size.width;
  }
}

class Content extends StatelessWidget {
  final double mediaWidth;
  final List<UserCategory> myCategories;
  const Content(
      {Key? key, required this.mediaWidth, required this.myCategories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: ListView(
                          padding: EdgeInsets.zero,
                          children: [
                            Wrap(spacing: 6.0, runSpacing: 6.0, children: [
                              for (var i in myCategories)
                                _buildChip(
                                    i.categoryName, const Color(0x00000000))
                            ]),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 25.0, left: 10.0),
                            child: Row(
                              children: <Widget>[
                                TextButton.icon(
                                  icon: const Text(
                                    "See all topics",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF015397),
                                    ),
                                  ),
                                  label: const Icon(Icons.navigate_next,
                                      size: 30, color: Color(0xFF015397)),
                                  onPressed: () {
                                    context.router.navigate(
                                        InterestCategoryPageRoute(
                                            myCategories: myCategories
                                                .map((e) => e.id.getOrCrash())
                                                .toList()));
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildChip(String label, Color color) {
    return Chip(
      labelPadding: const EdgeInsets.all(6.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.blue[100],
        child: const Icon(Icons.done, color: Colors.blue),
      ),
      label: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Colors.grey[700],
        ),
      ),
      backgroundColor: color,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
    );
  }
}
