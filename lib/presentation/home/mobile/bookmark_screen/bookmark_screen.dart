import 'dart:async';
import 'package:MD_Shorts/application/bookmark/bloc/bookmark_bloc.dart';
import 'package:MD_Shorts/application/bookmark/bookmark_setter/bookmark_setter_bloc.dart';
import 'package:MD_Shorts/application/share/bloc/share_bloc.dart';
import 'package:MD_Shorts/domain/bookmark/bookmark.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share/share.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookMarkScreen extends StatelessWidget {
  BookMarkScreen({Key? key}) : super(key: key);
  final Completer<WebViewController>? _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.80,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<BookmarkBloc, BookmarkState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(height: 8),
                      const LinearProgressIndicator(),
                    ],
                  ),
                  loadInProgress: (_) => Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(height: 8),
                      const LinearProgressIndicator(),
                    ],
                  ),
                  loadSuccess: (bookmarks) => BMLists(
                    bookmarks: bookmarks.data,
                  ),
                  loadFailure: (_) => Container(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class BMLists extends StatelessWidget {
  final List<BookmarkGet> bookmarks;
  const BMLists({Key? key, required this.bookmarks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.78,
      child: bookmarks.isNotEmpty
          ? GridView.builder(
              itemCount: bookmarks.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.67),
              itemBuilder: (BuildContext context, int i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center, // add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: bookmarks[i].urlToImage.toString().isNotEmpty &&
                              bookmarks[i]
                                  .urlToImage
                                  .toString()
                                  .contains("https")
                          ? Image.network(bookmarks[i].urlToImage,
                              height: 110, fit: BoxFit.fill)
                          : Image.asset('assets/images/A_blank_flag.png'),
                    ),
                    ListTile(
                      isThreeLine: true,
                      title: Text(
                        bookmarks[i].title,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Column(
                        children: [
                          SizedBox(
                            height: 39,
                            child: ListView(
                                padding: const EdgeInsets.only(top: 10),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  IconButton(
                                      icon: const Icon(
                                        Icons.bookmark,
                                        color: Color(0xFF015397),
                                      ),
                                      onPressed: () async {
                                        context.read<BookmarkSetterBloc>().add(
                                            BookmarkSetterEvent.removeBookmark(
                                                bookmarks[i].id.getOrCrash()));
                                      }),
                                  IconButton(
                                    icon: const Icon(Icons.share),
                                    onPressed: () async {
                                      context.read<ShareBloc>().add(
                                          ShareEvent.watchAllStarted(
                                              bookmarks[i].id.getOrCrash()));
                                      final RenderSliver box = context
                                          .findRenderObject() as RenderSliver;
                                      // if (Platform.isAndroid) {
                                      //         var url = Uri.parse(imageURL);
                                      //         var response = await get(url);
                                      //         final documentDirectory = (await getExternalStorageDirectory())!.path;
                                      //         File imgFile = File('$documentDirectory/news.png');
                                      //         imgFile.writeAsBytesSync(response.bodyBytes);
                                      //         Share.shareFiles(['$documentDirectory/news.png'],
                                      //             subject: title,
                                      //             text: 'Hey! Checkout the news from $source',
                                      //             sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
                                      // } else {
                                      Share.share(
                                          'Hey! Checkout the news from ' +
                                              bookmarks[i].sourceName,
                                          subject: bookmarks[i].title);
                                      // }
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.more_horiz),
                                    onPressed: () async {},
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      height: 36,
                    ),
                  ],
                );
              },
            )
          : ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                          "https://img.icons8.com/carbon-copy/100/000000/bookmark--v1.png"),
                      const Text("The stories you bookmark will appear here."),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
