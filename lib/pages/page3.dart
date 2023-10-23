import 'package:flutter/material.dart';

class pagina3 extends StatelessWidget {
  const pagina3({super.key});

  @override
  Widget build(BuildContext context) {

    //cuerpo de la pestaña 3
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: 4, // 4 llamadas perdidas
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.call_received, color: Colors.red), // Icono de llamada perdida
                  title: Text('Llamada perdida $index'),
                  subtitle: Text('Hace ${index + 5} minutos'), // Simulamos diferentes tiempos para las llamadas
                );
              },
            ),
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: 4, // 4 llamadas contestadas
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.call, color: Colors.green), // Icono de llamada contestada
                  title: Text('Llamada contestada $index'),
                  subtitle: Text('Hace ${index + 1} hora'), // Simulamos diferentes tiempos para las llamadas
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
