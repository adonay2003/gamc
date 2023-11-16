import 'package:flutter/material.dart';
import 'package:tabbar_tabbarview/pages/page1.dart';
import 'package:tabbar_tabbarview/pages/page2.dart';
import 'package:tabbar_tabbarview/pages/page3.dart';
import 'package:tabbar_tabbarview/pages/page4.dart';
import 'package:tabbar_tabbarview/pages/page5.dart';
import 'package:tabbar_tabbarview/pages/page6.dart';


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
  //La palabra clave late en la declaración de la variable controller indica que esta variable se inicializará en algún momento posterior, en lugar de hacerlo en el momento de la declaración.

  @override
 void initState() {
  super.initState();

  // Creamos una instancia de TabController para controlar el TabBar y el TabBarView.
  // Le especificamos la longitud (cantidad de pestañas) y el 'vsync' que se asocia con 'this'.
  controller = TabController(length: 6, vsync: this); 
  // Nota: La longitud debe coincidir con la cantidad de elementos en el TabBarView.

  // Agregamos un listener (escucha) al controlador que se activará cada vez que el usuario cambie de pestaña.
  controller.addListener(() {

    // Cuando se dispare el evento, llamamos a 'setState' para reconstruir el widget.
    setState(() {});
  });
}


 @override
void dispose() {
  super.dispose();

  // Cuando se descarta el widget (por ejemplo, cuando se navega a otra pantalla o se cierra la aplicación),
  // es importante liberar los recursos y deshacerse del TabController para evitar pérdidas de memoria.
  //Al hacerlo, se asegura que se eliminen las referencias a los objetos asociados al controlador y se liberen los recursos que estaban siendo utilizados para su funcionamiento.
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
          //Aqui agregamos un TabBar donde seran las pestañas
          bottom:   TabBar(

            ////////////////////////////////////////////////
            //  QUITA EL LIMTE DE LOS TabBar
            isScrollable: true, 

            ////////////////////////////////////////////////





            //cambia de color al seleccionarlo
            indicatorColor: Color.fromARGB(83, 0, 0, 0),

             //llamamos el controller en el tabBar
            controller: controller,

            //tamaño de letra de las pestañas
            labelStyle: TextStyle(fontSize: 16),

            //cuando no este seleccionado el texto de la pestaña
            unselectedLabelColor: Colors.grey,

            //cuando no este selcciomnado el texto se mueste menor el tamaño
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


             
              Text("Estados"), //pestaña2
              Text("Llamadas"), //pestaña3
              Text("pestaña 4"), //pestaña de prueba
              Text("pestaña 5"), //pestaña de prueba 

              Text("pestaña 6"), //pestaña de prueba 

              
          ]),
        ),


        //Agregamos el TabBarView
        body:  TabBarView(

          //llamamos el controller en el tabBarView
          controller: controller,
          
          children: const [

            //estos vendrian siendo el cuerpo de las pestañas y creamos archivos y colocamos las clases
            pagina1(), //Importamos cada clase
            pagina2(),
            pagina3(),
            pagina4(),
            pagina5(),
            pagina6(),
            
        ]),
      );
}
