
import 'package:flutter/material.dart';

class pagina4 extends StatelessWidget {
  const pagina4({super.key});

  @override
  Widget build(BuildContext context) {

    //dentro del Scaffold contenido del TabBar
    return const Scaffold(
      body: Column(
        children: [
        Icon(Icons.directions_car),    // Contenido de la pestaña 1
        Icon(Icons.directions_boat),    // Contenido de la pestaña 1
        Icon(Icons.directions_transit_filled_outlined),    // Contenido de la pestaña 1
        ],
      ),
    );
    



  }
}