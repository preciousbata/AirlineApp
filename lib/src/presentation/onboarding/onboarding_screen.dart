import 'package:flutter/material.dart';
import 'package:ibomair/constant.dart';
import 'package:ibomair/src/presentation/auth/login/login_screen.dart';
import 'package:ibomair/src/presentation/components/custom_button.dart';

class OnBoardingScreen extends StatelessWidget {
  static const routeName = '/onboarding-screen';
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'IBOM',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 30,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  'AIR',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                'assets/images/onboarding_img.png',
                width: double.infinity,
              ),
            ),
            const Text(
              'You are Welcome!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              onboardingMsg,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 35,
            ),
            CustomButton(
              onTap: () => Navigator.pushReplacementNamed(
                  context, LoginScreen.routeName),
              text: 'Sign In',
              ctnColor: primaryColor,
              width: double.infinity,
            ),
            const SizedBox(
              height: 11,
            ),
            const CustomButton(
              onTap: null,
              text: 'Sign Up',
              ctnColor: greenColor,
              width: double.infinity,
            ),
            const SizedBox(
              height: 35,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'By signing in, you accept our ',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: 'Terms of Use',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' and',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Privacy Policy',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
