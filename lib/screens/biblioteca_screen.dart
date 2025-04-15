import 'package:flutter/material.dart';

class BibliotecaScreen extends StatelessWidget {
  
  const BibliotecaScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar')
        ),
        body: const Center(
          child: const Text('Hola Mundo'),
        ),
      ) 
    );
  }
}