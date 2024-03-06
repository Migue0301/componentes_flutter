import 'package:flutter/material.dart';
import 'package:practica3_5b/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
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