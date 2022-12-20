import 'package:flutter/material.dart';
import 'package:ibomair/src/presentation/widgets/background.dart';
import 'homescreen.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGroundImage(imageUrl: 'assets/images/bg2.jpg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextField('E-MAIL',
                    Icons.alternate_email_rounded),
                buildTextField(
                    'PASSWORD', Icons.lock_rounded),
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 20.0, top: 20),
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
                        borderRadius:
                            BorderRadius.circular(20),
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
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Not a member ?',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
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
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
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
              color: Colors.white),
        ),
      ),
    );
  }
}
