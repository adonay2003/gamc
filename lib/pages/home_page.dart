import 'package:flutter/material.dart';
import 'package:tabbar_tabbarview/pages/page1.dart';
import 'package:tabbar_tabbarview/pages/page2.dart';
import 'package:tabbar_tabbarview/pages/page3.dart';

//este HomePage declaramos en la Rutab del main.dart
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> 

with SingleTickerProviderStateMixin{

  //controlador para controlar los TabBar y TabBarView
  late TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 3, vsync: this); //espeficamos la cantidad de pestañas y tiene que ser el mismo vlor de TabBarView
    controller.addListener(() {
      setState(() {});
    });
  }

 @override
  void dispose(){
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(

          //cambiar color al Scaffold del titulo
          backgroundColor: Colors.indigo,

            title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 40, // Ajusta el tamaño de la imagen circular
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage('img/gerson.jpg'), // Ruta de tu imagen
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text("Chat_GAMC"), //titulo del scaffold
            ],
          ),
          //Aui agregamos un TabBar donde seran las pestañas
          bottom:  TabBar(

            //cambia de color al seleccionarlo
            indicatorColor: Color.fromARGB(83, 0, 0, 0),

             //llamamos el controller en el tabBar
            controller: controller,

            //tamañod de letra de las pestañas
            labelStyle: TextStyle(fontSize: 16),

            //cuando no este seleccionado el texto de la pestaña
            unselectedLabelColor: Colors.grey,

            //cuando no este selcciomnado el texto se meuste menor el tamaño
            unselectedLabelStyle: TextStyle(fontSize: 15),
            tabs: [

              //envolvemos en un row para agregarle efecto o estilo de un circulo con numero
              Row(
                children: [
                  Text("chat"), //pestaña1
                  SizedBox(width: 5,),
                  CircleAvatar(
                    radius: 15,
                    child: Text("1"),
                  )
                ],
              ),


             
              Text("Estados"), //pestaña3
              Text("Llamadas"), //pestaña2
          ]),
        ),

        //Agregamos el TabBarView
        body:  TabBarView(

          //llamamos el controller en el tabBarView
          controller: controller,
          children: [

            //estos vendrian siendo el cuerpo de las pestañas y creamos archivos y colocamos las clases
            pagina1(), //Importamos cada clase
            pagina2(),
            pagina3(),
        ]),
      );
}
