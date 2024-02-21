import'package:flutter/material.dart';
import 'package:practica3_5b/screens/inputs_screen.dart';
import 'package:practica3_5b/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              'Entradas',
            // style: Theme.of(context).textTheme.headlineLarge,
            style: AppTheme.darkTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Introduciendo valores',
            style: AppTheme.darkTheme.textTheme.bodySmall),
            leading: const Icon(Icons.input),
            trailing: const Icon(Icons.arrow_right_alt_rounded),
            onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context) {
                return const InputsScreen();
              });
              Navigator.push(context, ruta1);
            },
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Listview.builder',
            style: AppTheme.darkTheme.textTheme.headlineLarge,
            ),
            subtitle: const Text('Lista con scroll infinito'),
            leading: const Icon(Icons.list),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Notificaciones',
            style: AppTheme.darkTheme.textTheme.headlineLarge,
            ),
            subtitle: const Text('Mostrar una notificación'),
            leading: const Icon(Icons.notification_add),
            trailing: const Icon(Icons.arrow_right_alt_rounded),
          ),
        ],
      ),
    );
  }
}

