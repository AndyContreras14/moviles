import 'package:flutter/material.dart';

class CustomTarjeta2 extends StatelessWidget {
  final String imageUrl;
  final String? texto;

  const CustomTarjeta2({
    super.key,
    required this.imageUrl,
    this.texto,
  });

  @override
  Widget build(BuildContext context) {
    final bool isNetworkImage = imageUrl.startsWith('http');

    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isNetworkImage
              ? Image.network(imageUrl, fit: BoxFit.cover)
              : Image.asset(imageUrl, fit: BoxFit.cover),
          if (texto != null)
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                texto!,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
        ],
      ),
    );
  }
}
