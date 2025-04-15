//import 'package:app1/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreenP extends StatelessWidget {
  const HomeScreenP({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portal Ingenieria de Sistemas'),
        elevation: 0,
        backgroundColor: Colors.deepOrangeAccent[300],
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder:
            (context, index) => ListTile(
              leading: Icon(Icons.border_all_rounded),
              title: Text('nombre de ruta'),
              onTap: () {
                /*final route = MaterialPageRoute(
                  builder: (context) => CardScreen()
                  );
                  Navigator.push(context, route);*/
              },
            ),
        separatorBuilder: (_, __) => Divider(),
      ),
    );
  }
}
