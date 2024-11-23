import 'package:flutter/material.dart';

import 'calcUi.dart';

void main() {
  runApp(MaterialApp(
    home: const CalcUi(),
    theme: ThemeData(
      colorScheme: const ColorScheme.light(
        primary: Colors.white,
        secondary: Colors.black,
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
