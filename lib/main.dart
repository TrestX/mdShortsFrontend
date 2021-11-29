import 'package:MD_Shorts/presentation/main_widget/main_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:url_strategy/url_strategy.dart';
import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

//   try {
// // you can also assign this app to a FirebaseApp variable
// // for example app = await FirebaseApp.initializeApp...

//     await Firebase.initializeApp(
//       name: 'mdshorts',
//       options: const FirebaseOptions(
//           apiKey: "AIzaSyCaCFv47WQ5bhzBE6Dx4PmseYtFoo8UCqU",
//           authDomain: "md-shorts.firebaseapp.com",
//           projectId: "md-shorts",
//           storageBucket: "md-shorts.appspot.com",
//           messagingSenderId: "397171372527",
//           appId: "1:397171372527:web:c10e357495b5b53b15861a",
//           measurementId: "G-3TQ8H3BZ7Q"),
//     );
//   } on FirebaseException catch (e) {
//     if (e.code == 'duplicate-app') {
// // you can choose not to do anything here or either
// // In a case where you are assigning the initializer instance to a FirebaseApp variable, // do something like this:
// //
// //   app = Firebase.app('SecondaryApp');
// //
//     } else {
//       throw e;
//     }
//   } catch (e) {
//     rethrow;
//   }
  configureInjection(Environment.prod);
  setPathUrlStrategy();
  runApp(MainWidget());
}
