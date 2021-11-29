import 'package:MD_Shorts/application/category/categories_bloc.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreenChips extends StatelessWidget {
  const SearchScreenChips({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 35,
        child: Scaffold(
          body: BlocBuilder<CategoriesBloc, CategoriesState>(
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
              loadSuccess: (categories) => SizedBox(
                height: 35,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.userCategory.length,
                    itemBuilder: (_, i) {
                      return Container(
                        margin: const EdgeInsets.only(right: 5),
                        padding: EdgeInsets.zero,
                        child: ActionChip(
                          label: Text(categories.userCategory[i].categoryName),
                          backgroundColor: Colors.white,
                          shadowColor: Colors.black,
                          elevation: 0.0,
                          padding: const EdgeInsets.all(2),
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 0.9,
                                color: Color(0xFFbdbdbd),
                              ),
                              borderRadius: BorderRadius.circular(20.0)),
                          onPressed: () {
                                context.router.popAndPush(
                                    CustomBottomNavigationBarRoute(
                                        index: 1, search: categories.userCategory[i].categoryName));
                          }
                        ),

                      );
                    }),
              ),
              loadFailure: (_) => Container(),
            );
          }),
        ),
      ),
    );
  }
}
