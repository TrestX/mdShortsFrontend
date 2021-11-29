import 'dart:async';
import 'dart:io';

import 'package:MD_Shorts/application/news/news_form/news_form_bloc.dart';
import 'package:MD_Shorts/presentation/home/mobile/widget/news_web_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'news_widget.dart';

class NewsCard extends StatefulWidget {
  final String url,
      imgUrl,
      primaryText,
      secondaryText,
      sourceName,
      author,
      publishedAt,
      newsID;
  NewsCard({
    Key? key,
    required this.url,
    required this.imgUrl,
    required this.primaryText,
    required this.secondaryText,
    required this.sourceName,
    required this.author,
    required this.publishedAt,
    required this.newsID,
  });

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  var page = 1;
  var showBottomBar = false;

  final Completer<WebViewController>? _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  final Set<Factory<OneSequenceGestureRecognizer>>? gestureRecognizers = {
    Factory(() => EagerGestureRecognizer())
  };

  final UniqueKey _key = UniqueKey();

  void stateUpdate(int val) {
    context
        .read<NewsFormBloc>()
        .add(const NewsFormEvent.changeUrlClicked(true));
    setState(() {
      page = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Dismissible(
          resizeDuration: null,
          key: ValueKey(page),
          onDismissed: (DismissDirection direction) {
            if (page > -1 && page < 2) {
              if (direction == DismissDirection.endToStart) {
                setState(() {
                  page = 2;
                });
              } else {
                if (page == 2) {
                  setState(() {
                    page = 1;
                  });
                } else {
                  context.router.navigate(CustomBottomNavigationBarRoute());
                }
              }
            }
          },
          child: page == 1
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      showBottomBar = !showBottomBar;
                    });
                  },
                  child:
                      NewWidget(showBottomBar: showBottomBar, widget: widget),
                )
              : NewsWebView(
                  widget: widget,
                  gestureRecognizers: gestureRecognizers,
                  callback: stateUpdate,
                  controller: _controller),
        ),
      ),
    );
  }
}
