import 'package:flutter/material.dart';

class ImcModel {
  String titulo;
  String recomendacion;
  String pathImage;
  Color color;

  ImcModel({
    required this.titulo,
    required this.recomendacion,
    required this.pathImage,
    required this.color,
  });
}

List<ImcModel> imcList = [
  ImcModel(
    titulo: "Bajo Peso",
    recomendacion: "Se debe alimentar con nutrientes necesarios",
    pathImage: "",
    color: Colors.yellow,
  ),
  ImcModel(
    titulo: "Normal",
    recomendacion: "El IMC es normal, mantente asi, muy bien hecho!",
    pathImage: "",
    color: Colors.green,
  ),
  ImcModel(
    titulo: "Sobrepeso",
    recomendacion: "Debes salir a correr 1 o 2 veces a la semana y tomar agua",
    pathImage: "",
    color: Colors.orange,
  ),
  ImcModel(
    titulo: "Obesidad",
    recomendacion:
        "Realizar una dieta estricta y balanceada. Hacer ejercicio 4 o 5 veces por semana.",
    pathImage: "",
    color: Colors.red,
  ),
];
