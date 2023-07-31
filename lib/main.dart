import 'package:flutter/material.dart';
import 'package:ramos_mauro_leccion/screens/ramos_mauro_archivo.dart';
import 'package:ramos_mauro_leccion/screens/ramos_mauro_login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _routes = {
    '/': (context) => const RamosMauroLogin(),
    '/archivo': (context) => const RamosMauroArchivo()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: _routes,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const RamosMauroLogin());
      },
    );
  }
}
