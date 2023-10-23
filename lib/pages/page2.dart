import 'package:flutter/material.dart';

class pagina2 extends StatelessWidget {
  const pagina2({super.key});

  @override
  Widget build(BuildContext context) {

    //cuerpo de la pestaña 2
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Estado de usuario actual (imagen circular)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('img/gerson2.jpg'),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Tu estado",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Lista de estados de amigos
          Expanded(
            child: ListView(
              children: [
                buildStatusTile(
                  "Emilio",
                  "Hace 2 horas", // Puedes usar la fecha y hora real aquí
                  "img/ani.jpg", // Reemplaza con la imagen del estado del amigo 1
                ),
                buildStatusTile(
                  "Jaime",
                  "Hace 5 horas",
                  "img/ani1.jpg", // Reemplaza con la imagen del estado del amigo 2
                ),

                buildStatusTile(
                  "Jeff",
                  "Hace 5 horas",
                  "img/ani2.avif", // Reemplaza con la imagen del estado del amigo 2
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Función para construir un elemento de estado de amigo
  Widget buildStatusTile(String friendName, String timeAgo, String friendStatusImage) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(friendStatusImage),
          ),
        ),
      ),
      title: Text(friendName),
      subtitle: Text(timeAgo),
    );
  }
}
