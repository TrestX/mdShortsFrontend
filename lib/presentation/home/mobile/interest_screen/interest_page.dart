import 'package:MD_Shorts/application/category/categories_bloc.dart';
import 'package:MD_Shorts/application/category/category_form/category_form_bloc.dart';
import 'package:MD_Shorts/injection.dart';
import 'package:MD_Shorts/presentation/auth/sign_up/category/widget/category_content.dart';
import 'package:MD_Shorts/presentation/auth/sign_up/sign_up.dart';
import 'package:MD_Shorts/presentation/home/mobile/interest_screen/interest_screen.dart';
import 'package:MD_Shorts/shared_preferences/profile_shared_preference.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';

class InterestPage extends StatelessWidget {
  const InterestPage({Key? key}) : super(key: key);
  Future<String> getUserData() async {
    var cats = await ProfileNotifier.instance.getCategories();
    return Future.value(cats.join(',')); // return your response
  }

  @override
  Widget build(BuildContext context) {
    var mediaWidth = widthGetMethod(context);
    return FutureBuilder<String>(
        future: getUserData(), // function where you call your api
        builder: (BuildContext context, AsyncSnapshot<String> userdata) {
          // AsyncSnapshot<Your object type>
          if (userdata.connectionState == ConnectionState.waiting) {
            return const Center(child: Text('loading...'));
          } else {
            if (userdata.hasError) {
              return Center(child: Text('Error: ${userdata.error}'));
            } else {
              var ids = userdata.data;
              return Scaffold(
                appBar: AppBar(
                  title: const Padding(
                    padding: EdgeInsets.only(left: 14.0),
                    child: Text(
                      "Interests",
                    ),
                  ),
                  centerTitle: true,
                  leading: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Color(0xFF015397),
                    ),
                    onPressed: () {
                      if (kIsWeb) {
                        context.router.navigate(const HomePageRoute());
                      } else {
                        context.router
                            .navigate(CustomBottomNavigationBarRoute());
                      }
                    },
                  ),
                ),
                body: MultiBlocProvider(
                  providers: [
                    BlocProvider<CategoryFormBloc>(
                      create: (context) => getIt<CategoryFormBloc>(),
                    ),
                    BlocProvider(
                      create: (context) => getIt<CategoriesBloc>()
                        ..add(CategoriesEvent.watchAllStarted(ids)),
                    ),
                  ],
                  child: BlocBuilder<CategoriesBloc, CategoriesState>(
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
                        loadSuccess: (categories) => InterestScreen(
                          mediaWidth: mediaWidth,
                          myCategories: categories.userCategory,
                        ),
                        loadFailure: (_) => Container(),
                      );
                    },
                  ),
                ),
              );
            }
            ;
          }
          ;
        });
  }

  double widthGetMethod(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? 768
        : MediaQuery.of(context).size.width;
  }
}
