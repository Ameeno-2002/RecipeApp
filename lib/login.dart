import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipeapp/components/my_button.dart';
import 'package:recipeapp/components/my_textfeild.dart';
import 'package:recipeapp/mainscreen2.dart';
import 'package:recipeapp/registerscreen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
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
          child: Column(
            children: [
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
              const SizedBox(height: 210),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(color: Colors.black, fontSize: 36),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              MyTextField(
                controller: usernameController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          color: Colors.blue[300],
                        ))),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              //Button
              MyButton(
                  onTap: SignUserIn,
                  buttonText: "Login",
                  destination: MainPage()),

              const SizedBox(
                height: 40,
              ),

              //Dont have an accout
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account ?',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      color: Colors.black,
                    )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyRegisterationPage()));
                    },
                    child: Text(
                      ' Register',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        color: Colors.deepOrange[300],
                      )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
