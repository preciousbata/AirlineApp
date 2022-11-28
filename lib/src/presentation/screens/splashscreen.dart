import 'package:flutter/material.dart';
import 'package:ibomair/src/presentation/screens/loginscreen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  bool animationCompleted = false;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this);
    _animationController.addListener(() {
      if (_animationController.value > 0.34) {
        _animationController.stop();
        animationCompleted = true;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:
                const BoxDecoration(color: Colors.white),
            height: animationCompleted ? 0 : size.height,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: const [
                      Text(
                        'IBOM',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'AIR',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Visibility(
                    visible: !animationCompleted,
                    child: Lottie.asset(
                        'assets/airplane_lottie.json',
                        height: 300,
                        controller: _animationController,
                        onLoaded: (composition) {
                      _animationController
                        ..duration = composition.duration
                        ..forward();
                    }, width: size.width, fit: BoxFit.fill),
                  ),
                ]),
          ),
          Visibility(
              visible: animationCompleted,
              child: const LoginScreen())
        ],
      ),
    );
  }
}
