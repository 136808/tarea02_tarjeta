import 'package:flutter/material.dart';

List<Widget> obtenerIconos() {
  const Color colorIconos = Colors.grey; // Define el color de los iconos

  return [
    Icon(
      Icons.facebook,
      color: colorIconos,
      size: 30,
    ),
    Icon(Icons.flutter_dash, color: colorIconos, size: 30),
    Icon(Icons.camera_alt, color: colorIconos, size: 30),
    Icon(Icons.apartment, color: colorIconos, size: 30),
    Icon(Icons.code, color: colorIconos, size: 30)
  ];
}
