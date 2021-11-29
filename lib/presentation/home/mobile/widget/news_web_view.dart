import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsWebView extends StatelessWidget {
  const NewsWebView({
    Key? key,
    required this.widget,
    required this.gestureRecognizers,
    required this.callback,
    required this.controller,
  }) : super(key: key);
  final widget;
  final Set<Factory<OneSequenceGestureRecognizer>>? gestureRecognizers;
  final void Function(int) callback;
  final Completer<WebViewController>? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.sourceName),
          centerTitle: true,
          leading: TextButton.icon(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(0)),
              ),
              onPressed: () {
                callback(1);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 15,
                color: Color(0xFF015397),
              ),
              label: const Text(
                "Feed",
                style: TextStyle(
                  fontSize: 12,
                ),
              )),
        ),
        body: WillPopScope(
          onWillPop: () async {
            callback(1);
            return false;
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: WebView(
              initialUrl: widget.url,
              key: key,
              javascriptMode: JavascriptMode.unrestricted,
              gestureRecognizers: gestureRecognizers,
              onWebViewCreated: (WebViewController webViewController) {
                controller!.complete(webViewController);
              },
              gestureNavigationEnabled: true,
              onPageFinished: (initialUrl) {},
            ),
          ),
        ),
      ),
    );
  }
}
