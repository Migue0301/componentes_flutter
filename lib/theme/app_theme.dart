// Definición de los temas de estilo de la app
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  // Constante de color primario
  static const primaryColor = Color.fromARGB(255, 0, 104, 190);
  // Constante de color secundario
  static const secondaryColor = Color.fromARGB(255, 0, 0, 0);
  // Constante de color de fondo
  static const backColor = Color.fromARGB(255, 255, 255, 255);
  // Constante de tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: AppBarTheme(
      color: primaryColor,
      titleTextStyle: GoogleFonts.acme(
        color: Colors.white,
        fontSize: 28.5,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: const IconThemeData(
      color: primaryColor,
      size: 35.0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          primaryColor,
        ),
        foregroundColor: MaterialStateProperty.all(
          Colors.white,
        ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.pacifico(fontSize: 25.0),
        )
      ),
    ),
    textTheme: TextTheme(
      // Títulos muy grandes
      headlineLarge: GoogleFonts.acme(
        color: primaryColor,

        fontSize: 26.5,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
        //decoration: TextDecoration.underline,
        //decorationColor: Colors.red,
        //decorationStyle: TextDecorationStyle.wavy,
        //decorationThickness: 2.0,
      ),
      headlineMedium: GoogleFonts.montserrat(
        color: secondaryColor,
        fontSize: 21.0,
        fontWeight: FontWeight.bold,

      ),
      // Estilo para texto muy pequeño
      bodySmall: GoogleFonts.habibi(
        color: secondaryColor,
        fontSize: 16.0,
      ),
    )
  );
}
