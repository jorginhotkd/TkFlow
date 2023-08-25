import 'package:flutter/material.dart';
import 'package:taekwondo/screens/branca.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guia de Exames',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curriculo Taekwondo'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: 60.0), // Adicionar espaço acima da imagem
            child: Image.asset('assets/images/img.png'),
          ),
          SizedBox(height: 60.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Faixas:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BrancaHome(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Cambia el color aquí
                    side:
                        BorderSide(color: Colors.black), // Agrega el borde aquí
                  ),
                  child: Text(''),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BrancaHome(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow, // Cambia el color aquí
                    side:
                        BorderSide(color: Colors.black), // Agrega el borde aquí
                  ),
                  child: Text(''),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BrancaHome(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange, // Cambia el color aquí
                    side:
                        BorderSide(color: Colors.black), // Agrega el borde aquí
                  ),
                  child: Text(''),
                ),
                SizedBox(width: 10),
                SizedBox(width: 10),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BrancaHome(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Cambia el color aquí
                    side:
                        BorderSide(color: Colors.black), // Agrega el borde aquí
                  ),
                  child: Text(''),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BrancaHome(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple, // Cambia el color aquí
                    side:
                        BorderSide(color: Colors.black), // Agrega el borde aquí
                  ),
                  child: Text(''),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BrancaHome(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Cambia el color aquí
                    side:
                        BorderSide(color: Colors.black), // Agrega el borde aquí
                  ),
                  child: Text(''),
                ),
                SizedBox(width: 10),
                SizedBox(width: 10),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BrancaHome(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.brown, // Cambia el color aquí
                    side:
                        BorderSide(color: Colors.black), // Agrega el borde aquí
                  ),
                  child: Text(''),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BrancaHome(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // Cambia el color aquí
                    side:
                        BorderSide(color: Colors.black), // Agrega el borde aquí
                  ),
                  child: Text(''),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BrancaHome(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black, // Cambia el color aquí
                    side: BorderSide(color: Colors.red), // Agrega el borde aquí
                  ),
                  child: Text(''),
                ),
                SizedBox(width: 10),
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
