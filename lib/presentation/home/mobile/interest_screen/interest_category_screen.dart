import 'package:MD_Shorts/application/category/category_form/category_form_bloc.dart';
import 'package:MD_Shorts/application/profile/profile_form/bloc/profile_form_bloc.dart';
import 'package:MD_Shorts/domain/category/category.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:MD_Shorts/shared_preferences/profile_shared_preference.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InterestCategoryContent extends StatelessWidget {
  const InterestCategoryContent({
    Key? key,
    required this.mediaWidth,
    required this.categories,
  }) : super(key: key);

  final double mediaWidth;
  final List<UserCategory> categories;
  Future<List<String>> getUserData() async {
    var selectedCategories = await ProfileNotifier.instance.getCategories();
    return Future.value(selectedCategories); // return your response
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
        future: getUserData(), // function where you call your api
        builder: (BuildContext context, AsyncSnapshot<List<String>> userdata) {
          // AsyncSnapshot<Your object type>
          if (userdata.connectionState == ConnectionState.waiting) {
            return const Center(child: Text('loading...'));
          } else {
            if (userdata.hasError) {
              return Center(child: Text('Error: ${userdata.error}'));
            } else {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        width: mediaWidth,
                        child: MediaQuery.of(context).size.width > 768
                            ? Card(
                                margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.01),
                                child: CardContent(
                                  mediaWidth: mediaWidth,
                                  categories: categories,
                                  selectedCats: userdata.data,
                                ),
                              )
                            : CardContent(
                                mediaWidth: mediaWidth,
                                categories: categories,
                                selectedCats: userdata.data,
                              ),
                      ),
                    ),
                  ],
                ),
              );
            }
          }
        });
  }
}

class CardContent extends StatelessWidget {
  const CardContent({
    Key? key,
    required this.mediaWidth,
    required this.categories,
    required this.selectedCats,
  }) : super(key: key);

  final double mediaWidth;
  final List<UserCategory> categories;
  final List<String>? selectedCats;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mediaWidth > 750
          ? const EdgeInsets.only(left: 150, right: 150, top: 10, bottom: 70)
          : const EdgeInsets.all(10),
      child: BlocBuilder<CategoryFormBloc, CategoryFormState>(
        builder: (context, state) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: mediaWidth,
                  height: MediaQuery.of(context).size.height * 0.71,
                  child: GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio:
                              MediaQuery.of(context).size.width > 1400
                                  ? 6 / 5
                                  : MediaQuery.of(context).size.width > 1000
                                      ? 3 / 2
                                      : 6 / 5,
                          crossAxisSpacing:
                              MediaQuery.of(context).size.width > 900 ? 10 : 0,
                          mainAxisSpacing: 20),
                      itemCount: categories.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return GestureDetector(
                          onTap: () => context.read<CategoryFormBloc>().add(
                                CategoryFormEvent.categoryChanged(
                                  categories[index].id.getOrCrash(),
                                ),
                              ),
                          child: Column(
                            children: [
                              Center(
                                child: CircleAvatar(
                                  radius: MediaQuery.of(context).size.width >
                                          750
                                      ? 39
                                      : MediaQuery.of(context).size.width > 375
                                          ? 39
                                          : MediaQuery.of(context).size.width >
                                                  280
                                              ? 29
                                              : 24,
                                  foregroundColor: Colors.black,
                                  child: CircleAvatar(
                                    radius: MediaQuery.of(context).size.width >
                                            750
                                        ? 39
                                        : MediaQuery.of(context).size.width >
                                                375
                                            ? 39
                                            : MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    280
                                                ? 29
                                                : 24,
                                    backgroundColor: state.id.contains(
                                            categories[index].id.getOrCrash())
                                        ? const Color.fromRGBO(1, 83, 151, 0.6)
                                        : const Color.fromRGBO(
                                            208, 208, 208, 0.15),
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: state.id.contains(
                                              categories[index].id.getOrCrash())
                                          ? const CircleAvatar(
                                              backgroundColor:
                                                  Color(0xFF015397),
                                              radius: 12.0,
                                              child: Icon(
                                                Icons.check,
                                                size: 15.0,
                                                color: Colors.white,
                                              ),
                                            )
                                          : null,
                                    ),
                                  ),
                                  backgroundImage:
                                      NetworkImage(categories[index].imageUrl),
                                ),
                              ),
                              Text(
                                categories[index].categoryName,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: ElevatedButton(
                            onPressed: () {
                              context
                                  .read<ProfileFormBloc>()
                                  .add(ProfileFormEvent.saveCategory(state.id));
                              context.router
                                  .popAndPush(CustomBottomNavigationBarRoute());
                              // context.router.navigate(
                              //     SignUpPageRoute(categories: state.id));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[300],
                              shape: const StadiumBorder(),
                            ),
                            child: const Text(
                              'Save',
                              style: TextStyle(color: Colors.black),
                            )),
                      )
                    ],
                  ),
                ),
              ]);
        },
      ),
    );
  }
}
