import 'package:MD_Shorts/application/email_verification/bloc/emailverification_bloc.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:MD_Shorts/shared_preferences/profile_shared_preference.dart';
import 'package:provider/src/provider.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({Key? key}) : super(key: key);
  @override
  _EVState createState() => _EVState();
}

class _EVState extends State<EmailVerification> {
  String fName = "";
  String lName = "";
  String email = "";
  String nemail = "";
  bool updateEmail = false;
  @override
  void initState() {
    super.initState();
    ProfileNotifier.instance.getFirstName().then((value) => setState(() {
          fName = value;
        }));
    ProfileNotifier.instance.getLastName().then((value) => setState(() {
          lName = value;
        }));
    ProfileNotifier.instance.getEmail().then((value) => setState(() {
          email = value;
        }));
  }

  void _update() {
    setState(() => updateEmail = true);
  }

  void _updateEmail(String e) {
    setState(() => nemail = e);
  }

  @override
  Widget build(BuildContext context) {
    var mediaWidth = widthGetMethod(context);

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: mediaWidth,
          child: MediaQuery.of(context).size.width > 768
              ? Card(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01),
                  child: Content(
                    mediaWidth: mediaWidth,
                    fName: fName,
                    lName: lName,
                    email: email,
                    nemail: nemail,
                    updateEmail: updateEmail,
                    update: _update,
                    updateVEmail: _updateEmail,
                  ),
                )
              : Content(
                  mediaWidth: mediaWidth,
                  fName: fName,
                  lName: lName,
                  email: email,
                  nemail: nemail,
                  updateEmail: updateEmail,
                  update: _update,
                  updateVEmail: _updateEmail,
                ),
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

class Content extends StatelessWidget {
  final double mediaWidth;
  final String fName;
  final String lName;
  final String email;
  final String nemail;
  final update;
  final updateVEmail;
  bool updateEmail;
  Content(
      {Key? key,
      required this.mediaWidth,
      required this.fName,
      required this.lName,
      required this.email,
      required this.nemail,
      required this.updateEmail,
      required this.update,
      required this.updateVEmail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: mediaWidth > 750
                ? const EdgeInsets.all(200)
                : const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hi " + fName + " " + lName,
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF015397)),
                ),
                const SizedBox(
                  height: 20,
                ),
                updateEmail
                    ? TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(8),
                        ),
                        onChanged: (value) => {updateVEmail(value)},
                      )
                    : Text(email),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width > 768
                      ? mediaWidth * 0.5
                      : mediaWidth * 0.9,
                  child: const Text(
                    "You have successfully created a MDShorts account. Please click on the link below to verify your email address and complete your registration.",
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                      onPressed: () => {
                            context.read<EmailverificationBloc>().add(
                                EmailverificationEvent.verifyEmail(nemail)),
                          },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF015397),
                        minimumSize: Size(
                            MediaQuery.of(context).size.width > 500
                                ? mediaWidth * 0.5
                                : mediaWidth,
                            40),
                      ),
                      child: const Text("Verify your email",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        update();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width > 500
                                ? mediaWidth * 0.5
                                : mediaWidth,
                            40),
                      ),
                      child: const Text("Update my email address",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
