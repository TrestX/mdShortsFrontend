import 'package:MD_Shorts/application/page_selected/page_selected_bloc.dart';
import 'package:MD_Shorts/presentation/home/mobile/bookmark_screen/bookmark_page.dart';
import 'package:MD_Shorts/presentation/home/mobile/search_screen/home_page_sidebar.dart';
import 'package:MD_Shorts/presentation/home/mobile/search_screen/search_screen_page.dart';
import 'package:MD_Shorts/presentation/home/mobile/search_screen/user_search_screen_page.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final String search;
  final int index;
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  CustomBottomNavigationBar({Key? key, this.search = "", this.index = 0})
      : super(key: key);

  Widget tabSwitch(int index, String search) {
    switch (index) {
      case 0:
        return const SearchPage();
      case 1:
        return UserSearchPage(search: search);
      case 2:
        return const BookmarkPage();
      default:
        return const SearchPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageSelectedBloc(),
      child: Dismissible(
        resizeDuration: null,
        key: const ValueKey(0),
        onDismissed: (dismissDirection) {
          if (dismissDirection == DismissDirection.endToStart) {
            context.router.popAndPush(const HomePageRoute());
          }
        },
        child: BlocBuilder<PageSelectedBloc, PageSelectedState>(
          builder: (context, state) {
            if (state.lastIndex == 0 && index == 1) {
              context
                  .read<PageSelectedBloc>()
                  .add(PageSelectedEvent.changeLastIndex(index));
            }
            String title = state.lastIndex == 0
                ? "Discover"
                : state.lastIndex == 1
                    ? "Search"
                    : "Bookmarks";
            return Scaffold(
              key: _key,
              appBar: AppBar(
                title: Text(title),
                centerTitle: true,
                shadowColor: Colors.white,
                actions: [
                  TextButton.icon(
                    onPressed: () {
                      context.router.navigate(const HomePageRoute());
                    },
                    icon: const Text("Feed"),
                    label: const Icon(Icons.arrow_right_outlined),
                  )
                ],
              ),
              endDrawer: const HomePageSideBar(),
              bottomNavigationBar: CustomNavigationBar(
                iconSize: 30.0,
                selectedColor: const Color(0xff040307),
                strokeColor: const Color(0x30040307),
                unSelectedColor: const Color(0xff040307),
                backgroundColor: Colors.white,
                onTap: (val) {
                  if (index == 1 && search != "") {
                    context.router
                        .push(CustomBottomNavigationBarRoute(index: val));
                  } else if (val < 3) {
                    context
                        .read<PageSelectedBloc>()
                        .add(PageSelectedEvent.changeLastIndex(val));
                  } else {
                    _key.currentState!.openEndDrawer();
                  }
                },
                items: [
                  CustomNavigationBarItem(
                    icon: const Icon(Icons.home_outlined),
                    selectedIcon: const Icon(
                      Icons.home_filled,
                      color: Color(0xFF015397),
                    ),
                  ),
                  CustomNavigationBarItem(
                    icon: const Icon(Icons.search),
                    selectedIcon: const Icon(
                      Icons.search,
                      color: Color(0xFF015397),
                    ),
                  ),
                  CustomNavigationBarItem(
                    icon: const Icon(Icons.bookmark_border_outlined),
                    selectedIcon: const Icon(
                      Icons.bookmark,
                      color: Color(0xFF015397),
                    ),
                  ),
                  CustomNavigationBarItem(
                    icon: const Icon(
                      Icons.account_circle_outlined,
                    ),
                    selectedIcon: const Icon(
                      Icons.account_circle,
                      color: Color(0xFF015397),
                    ),
                  ),
                ],
                currentIndex: state.lastIndex,
              ),
              body: tabSwitch(state.lastIndex, search),
            );
          },
        ),
      ),
    );
  }
}
