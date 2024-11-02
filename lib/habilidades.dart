import 'package:flutter/material.dart';

Widget habilidades(String texto) {
  return Column(
    mainAxisSize: MainAxisSize.min, // Ocupa solo el espacio necesario
    children: [
      Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 187, 224, 255),
            borderRadius: BorderRadius.circular(8),
            border: Border.all()),
        child: Text(
          texto,
          style: const TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    ],
  );
}
