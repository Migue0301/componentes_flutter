import'package:flutter/material.dart';
import 'package:practica3_5b/screens/image_screen.dart';
import 'package:practica3_5b/screens/infinite_scroll_screen.dart';
import 'package:practica3_5b/screens/inputs_screen.dart';
import 'package:practica3_5b/screens/notifications_screen.dart';
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
            leading: IconTheme(
              data: AppTheme.darkTheme.iconTheme,
              child: const Icon(Icons.input),
            ),
            trailing: IconTheme(
              data: AppTheme.darkTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right_rounded),
            ),
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
            subtitle: Text('Lista con scroll infinito',
            style: AppTheme.darkTheme.textTheme.bodySmall),
            leading: IconTheme(
              data: AppTheme.darkTheme.iconTheme,
              child: const Icon(Icons.list),
            ),
            onTap: () {
              final ruta2 = MaterialPageRoute(builder: (context) {
                return const InfiniteScrollScreen();
              });
              Navigator.push(context, ruta2);
            },
            trailing: IconTheme(
              data: AppTheme.darkTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right_rounded),
            ),
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Notificaciones',
            style: AppTheme.darkTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Mostrar una notificación',
            style: AppTheme.darkTheme.textTheme.bodySmall),
            leading: IconTheme(
              data: AppTheme.darkTheme.iconTheme,
              child: const Icon(Icons.notification_add),
            ),
            onTap: () {
              final ruta3 = MaterialPageRoute(builder: (context) {
                return const NotificationsScreen();
              });
              Navigator.push(context, ruta3);
            },
            trailing: IconTheme(
              data: AppTheme.darkTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right_rounded),
            ),
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Imagenes',
            style: AppTheme.darkTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Mostrar unas fotos locochonas',
            style: AppTheme.darkTheme.textTheme.bodySmall),
            leading: IconTheme(
              data: AppTheme.darkTheme.iconTheme,
              child: const Icon(Icons.image_outlined),
            ),
            onTap: () {
              final ruta4 = MaterialPageRoute(builder: (context) {
                return const ImageScreen();
              });
              Navigator.push(context, ruta4);
            },
            trailing: IconTheme(
              data: AppTheme.darkTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
