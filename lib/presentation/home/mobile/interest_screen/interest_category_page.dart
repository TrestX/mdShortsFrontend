import 'package:MD_Shorts/application/category/categories_bloc.dart';
import 'package:MD_Shorts/application/category/category_form/category_form_bloc.dart';
import 'package:MD_Shorts/application/profile/profile_form/bloc/profile_form_bloc.dart';
import 'package:MD_Shorts/injection.dart';
import 'package:MD_Shorts/presentation/home/mobile/interest_screen/interest_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';

class InterestCategoryPage extends StatelessWidget {
  final List<String> myCategories;
  const InterestCategoryPage({required this.myCategories, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaWidth = widthGetMethod(context);
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 14.0),
          child: Text(
            "Edit Interests",
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
            context.router.pop();
          },
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<CategoryFormBloc>(
            create: (context) => getIt<CategoryFormBloc>()
              ..add(CategoryFormEvent.addCategories(myCategories)),
          ),
          BlocProvider(
            create: (context) => getIt<ProfileFormBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<CategoriesBloc>()
              ..add(const CategoriesEvent.watchAllStarted("")),
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
              loadSuccess: (categories) => InterestCategoryContent(
                mediaWidth: mediaWidth,
                categories: categories.userCategory,
              ),
              loadFailure: (_) => Container(),
            );
          },
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
