import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/images/bg3.jpeg'),
              fit: BoxFit.cover,
              opacity: 0.6),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage('assets/images/bg1.jpg'),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'Lets Serve you better!!!!',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'LOGOUT',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
