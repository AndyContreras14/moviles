import 'package:flutter/material.dart';

class RepositoriosScreen extends StatelessWidget {
  
  const RepositoriosScreen({super.key});
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