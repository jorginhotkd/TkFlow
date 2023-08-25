import 'package:flutter/material.dart';
import 'package:taekwondo/main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo de Navegação e Conteúdo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: BrancaHome(),
    );
  }
}

class BrancaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exame para faixa Amarela.'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tchagui(Chutes):\n\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Ap Tchagui.\n\n'
              'Aptcha Oligui.\n\n'
              'An Tchagui.\n\n'
              'Bakat Tchagui.\n\n',
            ),
            Text(
              'Kibon Donjak(Posições):\n\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Ap Kubi Are Maki\n\n'
              'Ap Kubi Montong Maki\n\n'
              'Ap Kubi Olgul Maki\n\n'
              'Ap Kubi Monton Tchirigui\n\n',
            ),
            Text(
              'Formas(Sequência):\n\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Saju Tchirigui\n\n'
              'Saju Ap Tchagui\n\n',
            ),
            SizedBox(height: 20.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text('Poomsae'),
              ),
            ), // <--- Faltava fechar este widget
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faixa Branca - Taeguk Il Jang'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: 'vn3Ql0Q89_Q', // ID do vídeo
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            ),
          ),
          Row(
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
                child: Text('Voltar'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ),
                  );
                },
                child: Text('Home'),
              ),
              SizedBox(width: 20),
            ],
          ),

          // Aqui você pode adicionar mais widgets, se necessário
        ],
      ),
    );
  }
}
