import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipeapp/components/my_button.dart';
import 'package:recipeapp/components/my_textfeild.dart';
import 'package:recipeapp/login.dart';
import 'package:recipeapp/mainscreen2.dart';

class MyRegisterationPage extends StatelessWidget {
  MyRegisterationPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void SignUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
            reverse: true,
            child: Center(
                child: Column(children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Image.asset(
                  'assets/icon1.png',
                  width: 550,
                  height: 150,
                  alignment: Alignment.topCenter,
                ),
              ),
              const SizedBox(height: 195),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sign-Up",
                      style: TextStyle(color: Colors.black, fontSize: 36),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'User Name',
                obscureText: true,
              ),
              const SizedBox(
                height: 40,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'Email',
                obscureText: true,
              ),
              const SizedBox(
                height: 40,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              SizedBox(
                height: 25,
              ),
              MyButton(
                onTap: (SignUserIn),
                buttonText: "Register",
                destination: MainPage(),
              ),

              const SizedBox(
                height: 40,
              ),

              //Dont have an accout
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Have an account ?',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    color: Colors.black,
                  )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    ' Login',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      color: Colors.deepOrange[300],
                    )),
                  ),
                ),
              ]),
            ]))));
  }
}
