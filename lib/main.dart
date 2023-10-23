import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false, //quita la marca de la app
    initialRoute: "home", //Ruta Inicial

  
    routes: {
      //importamos HomePage
      "home":(context) => HomePage(), //asignar rutas cuando nos lleve nuestra aplicacion es decir al abrirla en que pagina lo hara asignamos esta
    },
    );
  }
}