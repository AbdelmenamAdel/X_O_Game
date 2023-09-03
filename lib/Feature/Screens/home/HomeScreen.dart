import 'package:f_animation/Feature/game/game_Screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/widget/customButton.dart';
import '../../../core/widget/customTextField.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController player1 = TextEditingController();

  TextEditingController player2 = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 200,
                      width: 200,
                      child: Center(
                          child: Lottie.asset(
                              'assets/lottie/animation_lm1tumt8.json'))),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Enter player 1 Name'),
                      CustomTextField(
                        hintText: 'Player X',
                        controller: player1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter player name';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('Enter player 2 Name'),
                      CustomTextField(
                        controller: player2,
                        hintText: 'Player O',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter player name';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GameScreen(
                                  player1: player1.text,
                                  player2: player2.text,
                                ),
                              ));
                        }
                      },
                      text: 'Start Game')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
