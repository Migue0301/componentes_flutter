// Definición de los temas de estilo de la app
import 'package:flutter/material.dart';

class AppTheme{
  // Constante de color primario
  static const primaryColor = Color.fromARGB(255, 0, 210, 132);
  // Constante de color de fondo
  static const backColor = Color.fromARGB(255, 20, 90, 255);
  // Constante de tema
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: primaryColor,
    )
  );
}
