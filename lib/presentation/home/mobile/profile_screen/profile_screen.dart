import 'package:MD_Shorts/apis/util_api.dart';
import 'package:MD_Shorts/domain/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:MD_Shorts/presentation/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key, required this.mediaWidth, required this.profile})
      : super(key: key);
  final double mediaWidth;
  final UserProfile profile;
  final ImagePicker _picker = ImagePicker();
  bool isVideo = false;
  final UtilApiClient _utilclient = UtilApiClient();
  void _onImageButtonPressed(ImageSource source,
      {BuildContext? context, bool isMultiImage = false}) async {
    final pickedFile = await _picker.pickImage(
      source: source,
    );
    if (pickedFile == null) {
      return;
    }
    ;
    var res = "";
    buildShowDialog(context!);
    var response = await _utilclient
        .preSignedUrl(pickedFile.name, "userImages")
        .then((value) => value.fold(
            (l) => res = "error",
            (r) async => res =
                await _utilclient.uploadToSignedUrl(pickedFile, r.uploadurl)));
    if (res == "success") {
      Navigator.of(context).pop();
      Navigator.of(context).pop();
      buildSnackBar(context, "profile photo updated successfully");
      Navigator.pop(context);
      Navigator.pop(context);
      context.router.navigate(const ProfilePageRoute());
    } else {
      Navigator.of(context).pop();
      Navigator.of(context).pop();
      buildSnackBar(
          context, "an error occured while updating the profile photo.");
    }
  }

  buildShowDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }

  buildSnackBar(BuildContext context, String msg) {
    final snackBar = SnackBar(
      content: const Text('Profile photo updated successfully!'),
      action: SnackBarAction(
        label: 'Success',
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          body: Padding(
            padding: MediaQuery.of(context).size.width > 768
                ? const EdgeInsets.all(110.0)
                : const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 58,
                          backgroundColor: Colors.white,
                          backgroundImage:
                              NetworkImage(profile.urlToProfileImage),
                        ),
                        Positioned(
                            bottom: 0,
                            right: -26,
                            child: RawMaterialButton(
                              onPressed: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 200,
                                      color: Colors.white,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                _onImageButtonPressed(
                                                    ImageSource.camera,
                                                    context: context);
                                              },
                                              child: Row(
                                                children: const [
                                                  Icon(Icons.photo_camera),
                                                  Padding(
                                                    padding: EdgeInsets.all(7),
                                                    child: Text(
                                                      "Camera",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                _onImageButtonPressed(
                                                    ImageSource.gallery,
                                                    context: context);
                                              },
                                              child: Row(
                                                children: const [
                                                  Icon(Icons.add_to_photos),
                                                  Padding(
                                                    padding: EdgeInsets.all(7),
                                                    child: Text(
                                                      "Gallery",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ElevatedButton(
                                              child: const Text('Close'),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              elevation: 2.0,
                              fillColor: const Color(0xff123456),
                              child: const Icon(Icons.add, color: Colors.white),
                              padding: const EdgeInsets.all(5.0),
                              shape: const CircleBorder(),
                            )),
                      ],
                    ),
                  ],
                ),
                ListTile(
                  title: const Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        profile.firstName + " " + profile.lastName,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: const Text(
                    "Designation",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        profile.designation != ""
                            ? profile.designation
                            : "Doctor",
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: const Text(
                    "Speciality",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        profile.speciality.value.fold(
                          (f) => f.maybeMap(
                            empty: (_) => '',
                            orElse: () => '',
                          ),
                          (a) => a[0],
                        ),
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: const Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${profile.address['address']}  ${profile.address['city']}  ${profile.address['state']}  ${profile.address['country']}  ${profile.address['pin']}',
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  height: 20,
                ),
                ListTile(
                  isThreeLine: true,
                  title: const Text(
                    "About",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        profile.about != ""
                            ? profile.about
                            : "John Doe is an administrator at samata hospital and Orthopaedic and Maternity Hospitail,Prakasam, India",
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ),
                      ),
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
