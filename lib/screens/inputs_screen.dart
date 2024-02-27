import 'package:flutter/material.dart';
import 'package:practica3_5b/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool switchValue = false; // controlar el widget switch
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Entradas',
            style: AppTheme.darkTheme.textTheme.headlineLarge,
          ),
          entradaNombre(),
          entradaSwitch(),
          entradaSlider(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: null,
                child: Text(
                  'Regresar',
                ),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text(
                  'Ventana de Datos',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TextField entradaNombre() {
    return TextField(
      style: AppTheme.darkTheme.textTheme.headlineMedium,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Escribe tu nombre',
        labelStyle: AppTheme.darkTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text('¿Te gusta Flutter? ',
        style: AppTheme.darkTheme.textTheme.headlineLarge),
        Switch(
        value: switchValue,
        onChanged: (value){
          setState(() {
            switchValue = value;
          });
        }),
      ],
    );
  }

  Column entradaSlider(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Indica qué tanto te gusta Flutter: ',
        style: AppTheme.darkTheme.textTheme.headlineLarge,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          divisions: 10,
          label: '${sliderValue.round()}',
          //activeColor: AppTheme.backColor,
          thumbColor: AppTheme.primaryColor,
          inactiveColor: AppTheme.secondaryColor,
          value: sliderValue,
          onChanged: (value){
          setState(() {
            sliderValue = value;
          });
        }),
      ]
    );
  }
}