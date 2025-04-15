import 'package:flutter/material.dart';

class ForosScreen extends StatelessWidget {
  
  const ForosScreen({super.key});
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