import 'package:MD_Shorts/application/settings/bloc/settings_bloc.dart';
import 'package:MD_Shorts/application/settings/changepassword/bloc/changepassword_bloc.dart';
import 'package:MD_Shorts/presentation/core/custom_bottom_navigation_bar.dart';
import 'package:MD_Shorts/presentation/home/mobile/search_screen/home_page_sidebar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/getwidget.dart';

    final TextEditingController _pass = TextEditingController();
class SettingsScreenPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  SettingsScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 150,
                  child: ListView(
                    children: [
                      GFAccordion(
                          contentBackgroundColor: const Color(0x00000000),
                          collapsedTitleBackgroundColor:
                              const Color(0x00000000),
                          expandedTitleBackgroundColor: const Color(0x00000000),
                          textStyle: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                          title: 'Change password',
                          contentChild: Padding(
                            padding:
                                const EdgeInsets.only(top: 16.0, left: 16.0),
                            child: BlocBuilder<ChangepasswordBloc,
                                ChangepasswordState>(
                              builder: (context, state) {
                                return Form(
                                  autovalidateMode: AutovalidateMode.always,
                                  child: Column(
                                    children: <Widget>[
                                      Row(children: const [
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 10),
                                          child: Text(
                                            "Email*",
                                            style: TextStyle(fontSize: 18),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ]),
                                      Row(children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width >
                                                  768
                                              ? 500
                                              : 300,
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              isDense: true, // Added this
                                              contentPadding: EdgeInsets.all(8),
                                            ),
                                            onChanged: (value) => context
                                                .read<ChangepasswordBloc>()
                                                .add(ChangepasswordEvent
                                                    .changeEemail(value)),
                                          ),
                                        ),
                                      ]),
                                      Row(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: Text(
                                              "New Password*",
                                              style: TextStyle(fontSize: 18),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    768
                                                ? 500
                                                : 300,
                                            child: TextFormField(
                                              controller: _pass,
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                isDense: true, // Added this
                                                contentPadding:
                                                    EdgeInsets.all(8),
                                              ),
                                              obscureText: true,
                                              onChanged: (value) => context
                                                  .read<ChangepasswordBloc>()
                                                  .add(ChangepasswordEvent
                                                      .changePpassword(value)),
                                              validator: (value) => context
                                                  .read<ChangepasswordBloc>()
                                                  .state
                                                  .password
                                                  .value
                                                  .fold(
                                                    (f) => f.maybeMap(
                                                      shortLength: (_) =>
                                                          'Password should be greater than 8 characters',
                                                      dontContainDigit: (_) =>
                                                          'Password should be contain a digit',
                                                      dontContainLower: (_) =>
                                                          'Password should be contain a lower case character',
                                                      dontContainUpper: (_) =>
                                                          'Password should be contain a upper case character',
                                                      empty: (_) =>
                                                          'Password should be greater than 8 characters.It should contain a lower case character. aupper case character and a digit',
                                                      orElse: () => null,
                                                    ),
                                                    (_) => null,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(children: const [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 10, bottom: 10),
                                          child: Text(
                                            "Confirm Password*",
                                            style: TextStyle(fontSize: 18),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ]),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    768
                                                ? 500
                                                : 300,
                                            child: TextFormField(
                                                decoration:
                                                    const InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  isDense: true, // Added this
                                                  contentPadding:
                                                      EdgeInsets.all(8),
                                                ),
                                                obscureText: true,
                                                validator: (val) {
                                                  if (val != _pass.text) {
                                                    return 'password doesnot match';
                                                  }
                                                  return null;
                                                }),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.end,
                                        children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 13,
                                            right:23,
                                          ),
                                          child: ElevatedButton(
                                              onPressed: () {
                                                context
                                                    .read<SettingsBloc>()
                                                    .add(SettingsEvent
                                                        .changePassword(
                                                            state.email,
                                                            state.password));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary:
                                                    const Color(0xFF015397),
                                              ),
                                              child: const Text("Submit",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                        ),
                                      ])
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          collapsedIcon: const Text(''),
                          expandedIcon: const Text('')),
                      const Divider(
                        color: Colors.black,
                        height: 20,
                      ),
                      GFAccordion(
                          contentBackgroundColor: const Color(0x00000000),
                          collapsedTitleBackgroundColor:
                              const Color(0x00000000),
                          expandedTitleBackgroundColor: const Color(0x00000000),
                          textStyle: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                          title: 'Social Accounts Integration',
                          content: '',
                          collapsedIcon: const Text(''),
                          expandedIcon: const Text('')),
                      const Divider(
                        color: Colors.black,
                        height: 20,
                      ),
                      GFAccordion(
                          contentBackgroundColor: const Color(0x00000000),
                          collapsedTitleBackgroundColor:
                              const Color(0x00000000),
                          expandedTitleBackgroundColor: const Color(0x00000000),
                          textStyle: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                          title: 'Email Notifications',
                          content: '',
                          collapsedIcon: const Text(''),
                          expandedIcon: const Text('')),
                      const Divider(
                        color: Colors.black,
                        height: 20,
                      ),
                      GFAccordion(
                          contentBackgroundColor: const Color(0x00000000),
                          collapsedTitleBackgroundColor:
                              const Color(0x00000000),
                          expandedTitleBackgroundColor: const Color(0x00000000),
                          textStyle: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                          title: 'Close your Account',
                          content: '',
                          collapsedIcon: const Text(''),
                          expandedIcon: const Text('')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
