import "package:flutter/material.dart";

class HomeScreem extends StatelessWidget {
  final options = [
    'Noticias y Actualidad',
    'Biblioteca Central',
    'Informaciones',
    'Pensum',
    'Repositorios',
    'Foros',
    'Nueva Card',
  ];

  final List<String> imageList = [
    'assets/images/image1.jpg',
    'assets/images/background.jpg',
    'assets/images/hojitabluey.jpg',
    'assets/images/logbluey.jpg',
    'assets/images/blueyhaloween.jpg',
  ];

  // Mapa para asociar las opciones con las rutas nombradas
  final Map<String, String> routeMap = {
    'Noticias y Actualidad': 'alert',
    'Biblioteca Central': 'biblioteca',
    'Informaciones': 'informacion',
    'Pensum': 'pensum',
    'Repositorios': 'repositorios',
    'Foros': 'foros',
    'Nueva Card': 'nueva_card',
  };

  HomeScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portal Ingeniería de Sistemas"),
        backgroundColor: Colors.greenAccent,
        leading: const Icon(Icons.airline_stops_outlined),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Image.asset(imageList[index], fit: BoxFit.cover);
              },
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                final option = options[index];
                return ListTile(
                  title: Text(option),
                  leading: const Icon(Icons.book),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    final routeName = routeMap[option];
                    if (routeName != null) {
                      Navigator.pushNamed(context, routeName);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Ruta no encontrada para: $option'),
                        ),
                      );
                    }
                  },
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: options.length,
            ),
          ),
        ],
      ),
    );
  }
}
