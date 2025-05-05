import 'package:flutter/material.dart';
import '../widget/custom_tarjeta2.dart'; // o '../widget/widget.dart' si lo exportas ahí

class NuevaCardScreen extends StatelessWidget {
  const NuevaCardScreen({super.key});

  final List<String> imageList = const [
    'assets/images/image1.jpg',
    'assets/images/background.jpg',
    'assets/images/hojitabluey.jpg',
    'assets/images/logbluey.jpg',
    'assets/images/blueyhaloween.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarjetas Personalizadas"),
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: imageList.length,
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          return CustomTarjeta2(
            imageUrl: imageList[index],
            texto: 'Imagen #${index + 1}',
          );
        },
      ),
    );
  }
}
