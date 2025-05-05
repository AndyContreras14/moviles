import 'package:flutter/material.dart';
import 'package:app1/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'Home';

  static Map<String, Widget Function(BuildContext)> routes = {
'Home': (BuildContext context) => HomeScreem(),
'HomeP': (BuildContext context) => HomeScreenP(),
'Biblioteca': (BuildContext context) => BibliotecaScreen(),
'Alert': (BuildContext context) => AlertScreen(),
'Card': (BuildContext context) => CardScreen(),
'Informacion': (BuildContext context) => InformacionScreen(),
'nueva_card': (BuildContext context) => NuevaCardScreen(),

};
 static Route<dynamic> onGenerateRoute(RouteSettings setting){
  return MaterialPageRoute(builder: (context)=> AlertScreen());
 }
}