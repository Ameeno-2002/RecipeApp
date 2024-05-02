import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipeapp/components/my_button.dart';
import 'package:recipeapp/login.dart';
import 'package:recipeapp/mainscreen2.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key});
  void SignUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Image at the top middle
          Positioned(
            top: MediaQuery.of(context).size.width *
                0.40, // Adjust this value for vertical positioning
            left: 0,
            right: 0,
            // Aligns the image in the center horizontally
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icon1.png', // Path to your image
                    width: 150, // Adjust the width as needed
                    height: 250, // Adjust the height as needed
                  ),
                ],
              ),
            ),
          ),
          // MyButton widget for registration
          Positioned(
            bottom: 40, // Adjust this value for vertical positioning
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MyButton(
                onTap: () {
                  // Handle registration action
                  SignUserIn();
                },
                buttonText: "Register",
                destination: LoginScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
