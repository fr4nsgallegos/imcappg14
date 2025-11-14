import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichtextPage extends StatelessWidget {
  const RichtextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rich text page")),
      body: Center(
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                text: "Hola",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: " Mundo",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  TextSpan(
                    text: " desde Flutter",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            SizedBox(height: 34),
            RichText(
              text: TextSpan(
                text: "Haz clic",
                style: TextStyle(color: Colors.black, fontSize: 30),
                children: [
                  TextSpan(
                    text: " Aquí",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("texto cliceado");
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
