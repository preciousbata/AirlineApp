import 'package:flutter/material.dart';
import 'package:ibomair/src/presentation/auth/login/login_screen.dart';
import 'package:ibomair/src/presentation/components/navbar/bottom_nav_bar.dart';
import 'package:ibomair/src/presentation/onboarding/onboarding_screen.dart';
import 'package:ibomair/src/presentation/onboarding/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  BottomNavBar.routeName: (context) => const BottomNavBar(),
  OnBoardingScreen.routeName: (context) => const OnBoardingScreen()
};
