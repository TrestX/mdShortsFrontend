import 'dart:ui';

import 'package:MD_Shorts/presentation/core/custom_bottom_nav_bar_bloc.dart';
import 'package:flutter/material.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_html/flutter_html.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.showBottomBar,
    required this.widget,
  }) : super(key: key);

  final bool showBottomBar;
  final widget;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        appBar: showBottomBar
            ? AppBar(
                title: const Text("My Feed"),
                centerTitle: true,
                actions: [
                  IconButton(
                      onPressed: () {
                        context.router.push(const HomePageRoute());
                      },
                      icon: const Icon(
                        Icons.refresh_outlined,
                        color: Color(0xFF015397),
                      )),
                ],
                leadingWidth: 80,
                leading: TextButton.icon(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(0)),
                    ),
                    onPressed: () {
                      context.router.navigate(CustomBottomNavigationBarRoute());
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 15,
                      color: Color(0xFF015397),
                    ),
                    label: const Text(
                      "Discover",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
              )
            : AppBar(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                toolbarHeight: 0,
              ),
        bottomNavigationBar: showBottomBar
            ? CustomBottomNavigationBarStory(
                id: widget.newsID,
                url: widget.url,
                imageURL: widget.imgUrl,
                title: widget.primaryText,
                source: widget.sourceName,
              )
            : const SizedBox(),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: ClipRRect(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/A_blank_flag.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: widget.imgUrl.toString().isNotEmpty &&
                                  widget.imgUrl.toString().contains("https")
                              ? NetworkImage(widget.imgUrl)
                              : const AssetImage(
                                      'assets/images/A_blank_flag.png')
                                  as ImageProvider,
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.0),
                            image: DecorationImage(
                              image: widget.imgUrl.toString().isNotEmpty &&
                                      widget.imgUrl.toString().contains("https")
                                  ? NetworkImage(widget.imgUrl)
                                  : const AssetImage(
                                          'assets/images/A_blank_flag.png')
                                      as ImageProvider,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.grey[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                        child: Tooltip(
                          message: widget.primaryText,
                          child: Text(
                            widget.primaryText,
                            maxLines: showBottomBar ? 2 : 3,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        child: Html(
                          data: widget.secondaryText,
                          style: {
                            "*": Style(
                                color: Colors.grey.shade700,
                                fontSize: FontSize.large,
                                fontWeight: FontWeight.w500,
                                padding: EdgeInsets.zero,
                                textAlign: TextAlign.justify,
                                fontFamily: 'Montserrat')
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: !showBottomBar
                            ? Text(
                                "Swipe right to read more at ${widget.sourceName}",
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.w100,
                                    fontSize: 11.0),
                              )
                            : Tooltip(
                                message: "Short by ${widget.author}",
                                child: Text(
                                  "Short by ${widget.author}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontWeight: FontWeight.w100,
                                      fontSize: 11.0),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
