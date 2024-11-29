import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prueba',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
        textTheme: GoogleFonts.anaheimTextTheme(),
      ),
      home: Scaffold(
        body: Row(
          children: [
            Column(
              //mainaxis alinea verticalmente
              // mainAxisAlignment: MainAxisAlignment.center,
              //crossaxis alinea horizontalmente
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                botton(Icons.book, 'Apuntes', () {}),
                botton(Icons.draw, 'Anotar', () {}),
                botton(Icons.switch_access_shortcut_outlined, 'Compartido recibido',
                    () {}),
                const Spacer(),
                botton(Icons.settings, 'Ajustes', () {}),
                botton(Icons.people, 'Invitar nuevas personas', () {}),
                botton(Icons.add, 'Nuevo anotar', () {}),
                botton(Icons.add, 'Nuevo apuntes', () {}),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Anotaciones',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 35,
                      ),
                      SizedBox(width: 800),
                      Icon(Icons.link),
                      SizedBox(width: 20),
                      Text('compartir'),
                      SizedBox(width: 20),
                      Icon(Icons.more_vert),
                      //
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      nota(),
                      const SizedBox(width: 40),
                      nota(),
                      const SizedBox(width: 40),
                      nota(),
                      const SizedBox(width: 40),
                      nota(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  nota() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[300],
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(25),
      height: 300,
      width: 200,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              const Text('Ingenieria'),
            ],
          ),
          const SizedBox(height: 25),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                    'Conjunto de conocimientos orientados a la invención y utilización de técnicas para el aprovechamiento de los recursos naturales o para la actividad industrial'),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.red[100]),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    'Edicion',
                    style: TextStyle(
                      color: Colors.red[700],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  InkWell botton(IconData icon, String text, Function onPressed) {
    return InkWell(
      onTap: () {
        onPressed();
        print(text);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Text(text),
          ],
        ),
      ),
    );
  }
}