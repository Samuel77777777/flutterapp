import 'package:done/screens/bottomnav.dart';
import 'package:done/screens/home/hompage.dart';

import 'package:done/screens/login_screen.dart';
import 'package:done/screens/onboarding_scren.dart';
import 'package:done/screens/p/logindesign.dart';
import 'package:done/screens/p/welcomscreen.dart';
import 'package:done/screens/registration_screen.dart';
import 'package:done/screens/settings/feedbacks.dart';
import 'package:done/screens/routes.dart';
import 'package:done/screens/settings/about.dart';
import 'package:done/screens/settings/settings.dart';
import 'package:done/screens/testscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginDesign(),
      routes: routes,
    );
  }
}
