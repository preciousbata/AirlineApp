import 'package:flutter/material.dart';
import 'package:ibomair/src/presentation/screens/loginscreen.dart';
import 'package:ibomair/src/presentation/screens/splashscreen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen()
};
