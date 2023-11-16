import 'package:flutter/material.dart';

class pagina1 extends StatelessWidget {
  const pagina1({super.key});

  @override
  Widget build(BuildContext context) {

    //cuerpo de la pestaña 1
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            ChatWidget("img/ge.jpg", "Yo", "Pagar internet xd"),  // Crear un ChatWidget con una imagen, un nombre y un mensaje
            ChatWidget("img/emilio.jpeg", "Emilio", "hijo, va que hay tareas ..."),
            ChatWidget("img/aa.jpg", "Levi", "Muy bien, gracias."),
            ChatWidget("img/jeff.jpg", "Jeff", "Men pasate la copia :v"),
          ],
        ),
      ),
    );
  }
}

class ChatWidget extends StatelessWidget {
  final String imagePath;  // Ruta de la imagen
  final String name;  // Nombre del remitente
  final String message;  // Mensaje del remitente

  ChatWidget(this.imagePath, this.name, this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.asset(imagePath),  // Mostrar la imagen local desde la ruta especificada
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),  // Resaltar el nombre en negrita
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text(message),  // Mostrar el mensaje
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
