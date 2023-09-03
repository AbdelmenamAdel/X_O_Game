import 'package:f_animation/Feature/Screens/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/lottie/animation_lm1tumt8.json'),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
          RichText(
            text: const TextSpan(
              text: 'Tic',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              /*defining default style is optional */
              children: <TextSpan>[
                TextSpan(
                  text: ' Tac ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                TextSpan(
                  text: 'Toe',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
