import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  double textSize = 10;
  double red = 0, green = 0, blue = 0, opacity = 1.0;
  bool isUnderline = false, isOverLine = false, isLineThrough = false;
  Widget _buildSlider(
    String title,
    double value,
    Color color,
    Function(double) onchanged, {
    bool isOpacity = false,
  }) {
    return Column(
      children: [
        Text(title),
        Slider(
          max: isOpacity ? 1 : 255,
          min: 0,
          value: value,
          activeColor: color,
          onChanged: onchanged,
        ),
      ],
    );
  }

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
                decoration: TextDecoration.combine([
                  if (isUnderline) TextDecoration.underline,
                  if (isOverLine) TextDecoration.overline,
                  if (isLineThrough) TextDecoration.lineThrough,
                ]),
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
            _buildSlider(
              "Color Rojo",
              red,
              Colors.red,
              (v) => setState(() {
                red = v;
              }),
            ),
            _buildSlider(
              "Color Azul",
              blue,
              Colors.blue,
              (v) => setState(() {
                blue = v;
              }),
            ),
            _buildSlider(
              "Color verde",
              green,
              Colors.green,
              (v) => setState(() {
                green = v;
              }),
            ),
            _buildSlider(
              "Opacidad",
              opacity,
              isOpacity: true,
              Colors.black,
              (p0) => setState(() {
                opacity = p0;
              }),
            ),
            Divider(),
            CheckboxListTile(
              value: isUnderline,
              title: Text("Subrayado"),
              subtitle: Text("Subrayar texto"),
              secondary: Icon(Icons.format_underline),
              activeColor: Colors.red,
              checkColor: Colors.white,
              // controlAffinity: ListTileControlAffinity.leading, //Para que aparezcael chekbox a la izquierda
              // contentPadding: EdgeInsets.all(16),
              // dense: true ,  //Más compacto
              selected: isUnderline, //Se marca visualmente todo el widget
              // onChanged:null, //inhabilita el chekbox y listile
              onChanged: (value) => setState(() {
                isUnderline = value!;
              }),
            ),
            CheckboxListTile(
              value: isOverLine,
              title: Text("Raya encima"),
              subtitle: Text("Raya encima texto"),
              secondary: Icon(Icons.format_overline),
              activeColor: Colors.cyan,
              selected: isOverLine, //Se marca visualmente todo el widget
              onChanged: (value) => setState(() {
                isOverLine = value!;
              }),
            ),
            CheckboxListTile(
              value: isLineThrough,
              title: Text("Tachar"),
              subtitle: Text("Tachar texto"),
              secondary: Icon(Icons.line_weight_rounded),
              activeColor: Colors.blue,
              selected: isLineThrough, //Se marca visualmente todo el widget
              onChanged: (value) => setState(() {
                isLineThrough = value!;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
