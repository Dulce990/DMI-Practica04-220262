import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.indigoAccent,
  Colors.tealAccent,
  Colors.yellow,
  Colors.teal,
  Colors.purpleAccent,
  Colors.redAccent,
  Colors.pinkAccent,
  Colors.lightGreenAccent,
  Colors.lightBlue,
  Colors.amberAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0,
        'La posición  del color seleccionado debe ser mayor a 0',
      ),
      assert(
        selectedColor < colorList.length,
        'La posición del color seleccionado no debe ser superior al tamaño de la lisrta',
      );

  ThemeData getTheme() =>
      ThemeData(useMaterial3: true, colorSchemeSeed: colorList[selectedColor]);
}
