import 'package:MD_Shorts/application/bookmark/bookmark_setter/bookmark_setter_bloc.dart';
import 'package:MD_Shorts/application/share/bloc/share_bloc.dart';
import 'package:MD_Shorts/presentation/core/custom_bottom_navigation_bar_story.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class CustomBottomNavigationBarStory extends StatelessWidget {
  final String id;
  final String url;
  final String title;
  final String imageURL;
  final String source;
  const CustomBottomNavigationBarStory({
    Key? key,
    required this.id,
    required this.url,
    required this.title,
    required this.imageURL,
    required this.source,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaWidth = widthGetMethod(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<ShareBloc>(
          create: (context) => getIt<ShareBloc>(),
        ),
        BlocProvider<BookmarkSetterBloc>(
          create: (context) => getIt<BookmarkSetterBloc>(),
        ),
      ],
      child: BlocConsumer<BookmarkSetterBloc, BookmarkSetterState>(
        listener: (context, state) {
          state.bookmarkedFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Already Bookmarked',
                  ),
                ).show(context);
              },
              (_) async {
                FlushbarHelper.createSuccess(message: "Successfully Bookmarked")
                    .show(context);
                                    await FirebaseAnalytics()
                    .logEvent(name: 'bookmark_news', parameters: {
                  'news_id': id,
                  "addedat": DateTime.now().toString(),
                  "sourceName":source,
                  "title":title
                });
              },
            ),
          );
        },
        builder: (context, state) {
          return CustomBottomNavigationBarStoryW(
              id: id,
              url: url,
              title: title,
              imageURL: imageURL,
              source: source);
        },
      ),
    );
  }

  double widthGetMethod(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? 768
        : MediaQuery.of(context).size.width;
  }
}
