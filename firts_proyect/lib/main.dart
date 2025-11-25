import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(113, 37, 16, 55), // color de fondo se debe poner antes del body
        body: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Contenedor 1
                    Container(
                      height: 80,
                      width: double.infinity,
                      alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color:  Color.fromARGB(255, 27, 31, 33),
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                      child: Text(
                        'Arroz con leche',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    // Contenedor 2
                    Container(
                      height: 80,
                      width: double.infinity,
                      alignment: Alignment.center,
                      color:  Color.fromARGB(255, 27, 31, 33),
                      child: Text( '1 taza de arroz blanco lavad, 4 astillas de canela, 2 tazas de agua, 4 tazas de leche, Una pizca de sal, 2 cucharadas de mantequilla, 1 ½ cucharadas de extracto de vainilla, 1 ½ tazas de azúcar, 1 12 onzas de leche condensada',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    // contenedor 3
                    Container(
                      height: 100,
                      width: double.infinity,
                      alignment: Alignment.center,
                      color:  Color.fromARGB(255, 27, 31, 33),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: List.generate(5, (index) {
                          return Icon( Icons.star, color: Colors.amber, size: 20,
                          );
                          }),
                          ),
                          Text(
                            '5 Reviews',
                            style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold,
                            color: Colors.white,
                            ),
                            ),
                            ],),
                            ),
                          SizedBox(height: 10),

                    // Row 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              alignment: Alignment.center,
                              color:  Color.fromARGB(255, 27, 31, 33),
                              //row 1 row
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //row 1 row row
                        Column(
                          children: List.generate(1, (index) {
                          return Icon( Icons.feed_outlined, color: Colors.green, size: 20,
                          );
                          }),
                          ),
                          Text(
                            'PREP:',
                            style: TextStyle( fontSize: 10,fontWeight: FontWeight.bold,
                            color: Colors.white,
                            ),
                            ),
                            Text(
                            '1 hr y 30 min',
                            style: TextStyle( fontSize: 10,fontWeight: FontWeight.bold,
                            color: Colors.white,
                            ),
                            ),
                            ],),
                            ),
                          ],),

                        Column(
                          children: [
                          Container(
                            height: 80,
                            width: 80,
                            color:  Color.fromARGB(255, 27, 31, 33),
                            child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: List.generate(1, (index) {
                          return Icon( Icons.lock_clock_outlined, color: Colors.green, size: 20,
                          );
                          }),
                          ),
                          Text(
                            'COOK:',
                            style: TextStyle( fontSize: 10,fontWeight: FontWeight.bold,
                            color: Colors.white,
                            ),
                            ),
                            Text(
                            '1 hr y 15 min',
                            style: TextStyle( fontSize: 10,fontWeight: FontWeight.bold,
                            color: Colors.white,
                            ),
                            ),
                            ],),
                            ),
                        ]),

                        Column(
                          children: [
                          Container(
                            height: 80,
                            width: 80,
                            color:  Color.fromARGB(255, 27, 31, 33),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [ 
                                Column(
                                  children: List.generate(1, (index) {
                                    return Icon( Icons.free_breakfast_outlined, color: Colors.green, size: 20,
                                    );
                          }),
                          ),
                          Text(
                            'FEEDS:',
                            style: TextStyle( fontSize: 10,fontWeight: FontWeight.bold,
                            color: Colors.white,
                            ),
                            ),

                            Text(
                            '4 - 6',
                            style: TextStyle( fontSize: 10,fontWeight: FontWeight.bold,
                            color: Colors.white,
                            ),
                            ),
                            ],),
                            ),
                        ]),
                      ]),
                      Row()
                  ]),
              ),
            ),
            Container(
              height: 370,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://www.recetasnestle.com.co/sites/default/files/styles/recipe_detail_desktop_new/public/srh_recipes/8b80d005d2b35d7a583470e3f19c9c1f.jpeg?itok=7TbncD74'),
                  fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  ),
            ),
          ]),
      ),
    );
  }
}
