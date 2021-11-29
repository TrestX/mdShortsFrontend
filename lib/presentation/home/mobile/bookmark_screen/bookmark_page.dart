import 'package:MD_Shorts/application/bookmark/bloc/bookmark_bloc.dart';
import 'package:MD_Shorts/application/bookmark/bookmark_setter/bookmark_setter_bloc.dart';
import 'package:MD_Shorts/application/share/bloc/share_bloc.dart';
import 'package:MD_Shorts/injection.dart';
import 'package:MD_Shorts/presentation/core/custom_bottom_navigation_bar.dart';
import 'package:MD_Shorts/presentation/home/mobile/bookmark_screen/bookmark_screen.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaWidth = widthGetMethod(context);
    return Scaffold(
      body: MultiBlocProvider(
          providers: [
            BlocProvider<BookmarkBloc>(
              create: (context) => getIt<BookmarkBloc>()
                ..add(const BookmarkEvent.getBookmarks()),
            ),
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
                        serverError: (_) => 'An error occured !',
                      ),
                    ).show(context);
                  },
                  (_) {
                    print("HERE");
                    // context
                    //     .read<BookmarkBloc>()
                    //     .add(const BookmarkEvent.getBookmarks());
                  },
                ),
              );
            },
            builder: (context, state) {
              return BookMarkScreen();
            },
          )),
    );
  }

  double widthGetMethod(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? 768
        : MediaQuery.of(context).size.width;
  }
}
