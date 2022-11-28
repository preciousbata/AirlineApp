import 'package:flutter/material.dart';
import 'homescreen.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: const [
            //     Text(
            //       'IBOM',
            //       style: TextStyle(
            //         fontSize: 35,
            //         fontWeight: FontWeight.bold,
            //         color: Colors.green,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     Text(
            //       'AIR',
            //       style: TextStyle(
            //         fontSize: 35,
            //         fontWeight: FontWeight.bold,
            //         color: Colors.white,
            //       ),
            //     ),
            //   ],
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            buildTextField(
                'E-MAIL', Icons.alternate_email_rounded),
            buildTextField('PASSWORD', Icons.lock_rounded),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'Forget Password ?',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.deepOrange,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const HomeScreen())),
                child: Container(
                  height: 60,
                  width: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 18.0),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Not a member ?',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.deepOrange,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Join now',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton:
          const FloatingActionButton.extended(
        backgroundColor: Colors.deepOrange,
        onPressed: null,
        label: Text(
          'Continue',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniEndFloat,
    );
  }

  Widget buildTextField(String hintText, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(
            icon,
            color: Colors.deepOrange,
          ),
          //prefixIconColor: Colors.deepOrange,
          hintStyle: const TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.deepOrange),
        ),
      ),
    );
  }
}
