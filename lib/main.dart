import 'package:flutter/material.dart';
import 'package:tarjeta/habilidades.dart';
import 'package:tarjeta/iconos.dart';

void main() {
  runApp(const MaterialApp(
    home: MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _contador = 0;

  void _incrementarContador() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil profesional'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 320,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 228, 242, 254),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('images/usuario.png'),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Hardaway Mercado',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Desarrollador Flutter jr',
                    style: TextStyle(
                        color: Colors.grey, fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: _incrementarContador,
                        icon: const Icon(Icons.favorite, color: Colors.red),
                        iconSize: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '$_contador',
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 162, 198, 228),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          habilidades('Flutter'),
                          habilidades('Dart'),
                          habilidades('Firebase'),
                          habilidades('Git'),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [habilidades('UI/UX')],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: obtenerIconos(), // Llama a la lista de iconos
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.email,
                            color: Colors.white), // Ícono en blanco
                        label: const Text(
                          'Contactar',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16), // Texto en blanco
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Fondo azul
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.phone,
                            color: Colors.white), // Ícono en blanco
                        label: const Text(
                          'CV',
                          style:
                              TextStyle(color: Colors.white), // Texto en blanco
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Fondo azul
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('15',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('Proyectos'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('1.2K',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('Seguidores'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('4.9',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('Rating'),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Widget crearEspacioRectangular(String texto) {
//   return Column(
//     mainAxisSize: MainAxisSize.min, // Ocupa solo el espacio necesario
//     children: [
//       Container(
//         alignment: Alignment.center,
//         padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//         decoration: BoxDecoration(
//             color: Color.fromARGB(255, 187, 224, 255),
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all()),
//         child: Text(
//           texto,
//           style: const TextStyle(color: Colors.black, fontSize: 16),
//         ),
//       ),
//     ],
//   );
// }
