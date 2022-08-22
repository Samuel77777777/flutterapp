import 'package:done/screens/bottomnav.dart';
import 'package:done/screens/settings/settings.dart';
import '../screens/settings/feedbacks.dart';
import 'package:flutter/material.dart';
import './registration_screen.dart';
import './forgot_password.dart';
import './home_screen.dart';
import './login_screen.dart';
import './onboarding_scren.dart';

//my routes
Map<String, WidgetBuilder> routes = {
  OnboardingScreen.id: (context) => OnboardingScreen(),
  LoginScreen.id: (context) => LoginScreen(),
  RegistrationScreen.id: (context) => RegistrationScreen(),
  ForgotPassword.id: (context) => ForgotPassword(),
  HomeScreen.id: (context) => HomeScreen(),
  Bottom.id: (context) => Bottom(),
  Settings.id: (context) => Settings(),
  Notifications.id: (context) => Notifications(),
};
