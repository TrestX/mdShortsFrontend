import 'package:MD_Shorts/application/category/categories_bloc.dart';
import 'package:MD_Shorts/application/category/category_form/category_form_bloc.dart';
import 'package:MD_Shorts/injection.dart';
import 'package:MD_Shorts/presentation/auth/sign_up/category/widget/category_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaWidth = widthGetMethod(context);
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<CategoryFormBloc>(
            create: (context) => getIt<CategoryFormBloc>(),
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
              loadSuccess: (productValue) => CategoryContent(
                mediaWidth: mediaWidth,
                myProducts: productValue.userCategory,
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
