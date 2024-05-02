import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;
  final Widget destination;
  const MyButton(
      {super.key,
      required this.onTap,
      required this.buttonText,
      required this.destination});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => destination));
              },
              child: Text(
                buttonText,
                style: GoogleFonts.poppins(
                  // Use Google Fonts for the font style
                  textStyle: TextStyle(
                    color: Colors.white,
                    // Text color
                    fontWeight: FontWeight.bold, // Bold text
                    fontSize: 28, // Text size
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF7D61), // Background color
                minimumSize: Size(438, 80),

                // Button size
              ),
            ),
          ],
        ),
      ),
    );
  }
}
