import 'package:flutter/material.dart';

class InformacionScreen extends StatelessWidget {
  
  const InformacionScreen({super.key});
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