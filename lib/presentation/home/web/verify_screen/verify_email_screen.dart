import 'package:flutter/material.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({
    Key? key,
    required this.message,
  }) : super(key: key);
  final String message;

  @override
  _VEState createState() => _VEState();
}

class _VEState extends State<VerifyEmail> {
  @override
  void initState() {
    super.initState();
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
                  ),
                )
              : Content(
                  mediaWidth: mediaWidth,
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
  const Content({Key? key, required this.mediaWidth}) : super(key: key);

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
                Image.network(
                  "https://img.icons8.com/fluency/64/000000/verified-account.png",
                ),
                const Text(
                  "Verified",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF015397)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Congratulations! You have successfully verified the account.",
                  textAlign: TextAlign.center,
                ),
                const Text(""),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        context.router.navigate(const HomePageRoute());
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF015397),
                        minimumSize: Size(
                            MediaQuery.of(context).size.width > 500
                                ? mediaWidth * 0.5
                                : mediaWidth,
                            40),
                      ),
                      child: const Text("Home",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
