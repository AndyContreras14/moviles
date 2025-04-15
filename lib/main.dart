



import 'package:app1/routes/app_routes.dart';
import 'package:flutter/material.dart';
//import 'package:app1/screens/screens.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portal de Ingeniería de Sistemas',
      theme: ThemeData(
        primarySwatch: Colors.green, // Puedes ajustar el tema según tus preferencias
      ),
      //home: HomeScreem(), // Aquí estableces tu HomeScreen como pantalla inicial
      initialRoute: AppRoutes.initialRoute,
      debugShowCheckedModeBanner: false, // Opcional: quita el banner de debug
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
        /*'Biblioteca': (BuildContext context)=>BibliotecaScreen(),
        'Alert': (BuildContext context)=>AlertScreen(),
        'Card': (BuildContext context)=>CardScreen(),
        'Foros': (BuildContext context)=>ForosScreen(),
        'Informacion': (BuildContext context)=>InformacionScreen(),
        'Pensum': (BuildContext context)=>PensumScreen(),
        'Repositorios': (BuildContext context)=>RepositoriosScreen()*/
      //},
      /*onGenerateRoute: (setting){
        return MaterialPageRoute(builder: (context) => AlertScreen());
      },*/
    );
  }
}