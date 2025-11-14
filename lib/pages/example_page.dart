import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  double textSize = 10;
  double red = 0, green = 0, blue = 0, opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Style Editor")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
              style: TextStyle(
                fontSize: textSize,
                color: Color.fromRGBO(
                  red.toInt(),
                  green.toInt(),
                  blue.toInt(),
                  opacity,
                ),
              ),
            ),
            Divider(),
            Text("Tamaño del texto"),
            Slider(
              max: 30,
              min: 5,
              value: textSize,
              onChanged: (v) {
                setState(() {
                  textSize = v;
                });
              },
            ),
            Text("Color Rojo"),
            Slider(
              max: 255,
              min: 0,
              value: red,
              activeColor: Colors.red,
              onChanged: (v) {
                setState(() {
                  red = v;
                });
              },
            ),
            Text("Color verde"),
            Slider(
              max: 255,
              min: 0,
              value: green,
              activeColor: Colors.green,
              onChanged: (v) {
                setState(() {
                  green = v;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
