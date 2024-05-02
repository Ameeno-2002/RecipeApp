import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
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
            ]))));
  }
}
