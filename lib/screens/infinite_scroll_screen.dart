import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<InfiniteScrollScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Ventana con una lista infinita'),
    );
  }
}