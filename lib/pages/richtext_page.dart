import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichtextPage extends StatefulWidget {
  @override
  State<RichtextPage> createState() => _RichtextPageState();
}

class _RichtextPageState extends State<RichtextPage> {
  bool isImportant = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isImportant = !isImportant;
          setState(() {});
        },
      ),
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
            // SIMULANDO SUBINDICES
            RichText(
              text: TextSpan(
                text: "H",
                style: TextStyle(color: Colors.cyan, fontSize: 50),
                children: [
                  TextSpan(
                    text: "2",
                    style: TextStyle(fontSize: 30, color: Colors.red),
                  ),
                  TextSpan(text: "O"),
                ],
              ),
            ),

            // texto con imágenes
            RichText(
              text: TextSpan(
                text: "Texto con imágenes",
                style: TextStyle(color: Colors.orange),

                children: [
                  WidgetSpan(child: Icon(Icons.favorite, color: Colors.red)),
                  TextSpan(
                    text: " Más texto",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ),

            // Con condicionales
            RichText(
              text: TextSpan(
                text: "Este es un texto",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: isImportant ? " IMPOIRTANTE" : " normal",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: isImportant
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: isImportant ? Colors.red : Colors.orange,
                    ),
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
