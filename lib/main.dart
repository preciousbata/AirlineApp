import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ibomair/routes.dart';
import 'package:ibomair/src/presentation/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ibom Air',
        theme: ThemeData(
          // This is the theme of your application.
          useMaterial3: true,
          fontFamily: GoogleFonts.openSans().fontFamily,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: OnBoardingScreen.routeName,
        routes: routes);
  }
}
