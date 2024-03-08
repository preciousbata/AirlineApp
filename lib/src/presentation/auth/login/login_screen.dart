import 'package:flutter/material.dart';
import 'package:ibomair/constant.dart';
import 'package:ibomair/src/presentation/components/background.dart';
import 'package:ibomair/src/presentation/components/custom_button.dart';
import 'package:ibomair/src/presentation/components/custom_textfield.dart';
import 'package:ibomair/src/presentation/components/navbar/bottom_nav_bar.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGroundImage(imageUrl: 'assets/images/bg2.jpg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                const SizedBox(
                  height: 90,
                ),
                const Text(
                  'Sign In',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 18,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Get access to member-only deals, price alerts',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const Text('and more.',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                    hintText: 'e-mail',
                    icon: Icons.alternate_email_rounded,
                    controller: _emailController),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                    hintText: 'password',
                    icon: Icons.lock_rounded,
                    controller: _passwordController),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 18.0),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                CustomButton(
                  onTap: () => Navigator.pushReplacementNamed(
                      context, BottomNavBar.routeName),
                  text: 'Log In',
                  width: double.infinity,
                ),
              ],
            ),
          ),
          floatingActionButton: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'SKIP',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.deepOrange,
                size: 17,
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniEndFloat,
        ),
      ],
    );
  }

  Widget buildTextField(String hintText, IconData icon) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
        prefixIcon: Icon(
          icon,
          color: Colors.deepOrange,
        ),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
        fillColor: Colors.grey.shade200,
        filled: true,
        //prefixIconColor: Colors.deepOrange,
        hintStyle: const TextStyle(
            fontWeight: FontWeight.w300, color: Colors.black, fontSize: 16),
      ),
    );
  }
}
