import 'package:flutter/material.dart';
//import 'package:practica3_5b/screens/data_screen.dart';
import 'package:practica3_5b/screens/home_screen.dart';
import 'package:practica3_5b/screens/infinite_scroll_screen.dart';
import 'package:practica3_5b/screens/notifications_screen.dart';
import 'package:practica3_5b/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';
//import 'package:practica3_5b/models/data.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  bool switchValue = false; // controlar el widget switch
  double sliderValue = 0.0;
  int radioSelected = 0;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  int indexNavigation = 3;

openScreen (int index, BuildContext context) {
    MaterialPageRoute ruta =
    MaterialPageRoute(builder: (context) => const HomeScreen());

    switch (index) {
      case 0:
        ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
        break;
      case 1:
        ruta = MaterialPageRoute(builder: (context) => const InfiniteScrollScreen());
        break;
      case 2:
        ruta = MaterialPageRoute(builder: (context) => const NotificationsScreen());
        break;
      case 3:
        ruta = MaterialPageRoute(builder: (context) => const ImageScreen());
        break;
      /*case 4:
        ruta = MaterialPageRoute(builder: (context) => const DataScreen(),);
              Navigator.push(context, ruta);
        break;*/
    }
    setState(() {
      indexNavigation = index;
      Navigator.push(context, ruta);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNavigation,
        backgroundColor: AppTheme.secondaryColor,
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        selectedItemColor: AppTheme.primaryColor,
        onTap: (index) => openScreen(index, context),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notificación'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Imagenes'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Salir'
          ),
        ]
      ),
      body: ListView(
        children: [
          cardImage1(),
          cardImage2(),
          imageFade(),
        ],
      ),
    );
  }
  Card cardImage1() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.all(15),
        elevation: 20,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Column(
            children: [
              const SizedBox(
                height: 100.0,
                width: 100.0,
              ),              
              const Image(
                image: AssetImage('assets/img/Flash.jpg'),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text('The Flash',
                style: AppTheme.lightTheme.textTheme.headlineMedium,
              ),
            )
          ],
        )
      ),
    );
  }
  SizedBox cardImage2(){
    return SizedBox(
      height: 200.0,
      width: 200.0,
      child: Image.network('https://www.carpixel.net/w/04d481ad2a54e91aca84d4723b24cf19/bugatti-la-voiture-noire-wallpaper-hd-91532.jpg'),
    ); 
  }
  Stack imageFade(){
    return Stack(
      children: <Widget>[
        const Center(
          child: CircularProgressIndicator(),
        ),
        Center(
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: 'https://www.carpixel.net/w/04d481ad2a54e91aca84d4723b24cf19/bugatti-la-voiture-noire-wallpaper-hd-91532.jpg',),
        ),
      ],
    );
  }
}