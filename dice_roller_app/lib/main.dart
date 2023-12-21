import 'package:dice_roller_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(

Color.fromARGB(255, 56, 134, 4),
Color.fromARGB(255, 109, 4, 18),
            ),
      ),
    ),
  );
}
