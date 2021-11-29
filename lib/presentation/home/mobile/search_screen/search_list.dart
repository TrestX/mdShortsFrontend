import 'dart:async';

import 'package:MD_Shorts/presentation/home/mobile/search_screen/search_web_view.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:auto_route/auto_route.dart';

class SearchList extends StatelessWidget {
  SearchList({Key? key, required this.news}) : super(key: key);
  final List news;
  final Completer<WebViewController>? _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: news.length,
      itemBuilder: (bContext, i) {
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        news[i].title,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        news[i].description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SearchWebView(
                                        url: news[i].url,
                                        controller: _controller)));
                          },
                          child: Text(
                            "Read more",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14,
                            ),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Image.network(
                    news[i].urlToImage,
                    errorBuilder: (BuildContext context, Object exception,
                        StackTrace? stackTrace) {
                      return Image.asset('assets/images/A_blank_flag.png');
                    },
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
              height: 6,
            ),
            const SizedBox(
              height: 12,
            )
          ],
        );
      },
    );
  }
}
