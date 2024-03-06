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
  int radioSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaNombre(),
            entradaSwitch(),
            entradaSlider(),
            entradasRadio(),
            const ElevatedButton(
              onPressed: null,
              child: Text( 
                'Guardar',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.primaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Datos'
          ),
        ]
      ),
    );
  }

  TextField entradaNombre() {
    return TextField(
      style: AppTheme.lightTheme.textTheme.headlineMedium,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Escribe tu nombre',
        labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text('¿Te gusta Flutter? ',
        style: AppTheme.lightTheme.textTheme.headlineLarge),
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
        style: AppTheme.lightTheme.textTheme.headlineLarge,
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

  Column entradasRadio() {
    return Column(
      children: [
        Text('¿Qué prefieres para desarrollo móvil? ',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text(
            'Kotlin ',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 1,
              groupValue: radioSelected,
              onChanged: (value) {
                setState(() {
                  radioSelected = value!;
                print('Selección del botón radio: $radioSelected');
                });
              },
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Flutter ',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 2,
              groupValue: radioSelected,
              onChanged: (value) {
                setState(() {
                  radioSelected = value!;
                print('Selección del botón radio: $radioSelected');
                });
              },
            ),
          ),
        )
      ],
    );
  }
}