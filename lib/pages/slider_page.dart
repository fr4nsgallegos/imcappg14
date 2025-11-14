import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double valor = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider Page")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Slider(
              value: valor,
              min: 1, //valor mínimo, si no se define entonces es 0
              max: 10, //vvalor  máximo, si no se degine entonces es 1
              divisions: 4, //divide el slider en dos partes iguales
              label:
                  '${valor.toStringAsFixed(0)}', // texto que va a aparecer sobre el slider al usar divisiones
              activeColor: Colors.blue, //Color de la parte que se rellena
              inactiveColor: Colors.amber, //Color de la parte que no se rellena
              thumbColor: Colors.red, //Color de la bolita
              onChanged: (v) {
                valor = v;
                print(valor);
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
