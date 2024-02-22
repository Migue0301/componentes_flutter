import 'package:flutter/material.dart';
import 'package:practica3_5b/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Entradas',
          style: AppTheme.darkTheme.textTheme.headlineLarge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Regresar',
                style: AppTheme.darkTheme.textTheme.bodySmall,
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Ventana de Datos',
                style: AppTheme.darkTheme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ],
    );
  }
}