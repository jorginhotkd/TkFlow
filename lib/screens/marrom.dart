import 'package:flutter/material.dart';
import 'package:TkFlow/main.dart';
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
      home: MarromHome(),
    );
  }
}

class MarromHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exame para faixa Vermelha.'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: IconButton(
          // Adicionar um IconButton como botão personalizado
          icon: Icon(Icons.home), // Ícone do botão home
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
        ),
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
              'Bandal Tchagui.\n\n'
              'Dolyo Tchagui.\n\n'
              'Yop Tchagui.\n\n'
              'Tit Tchagui.\n\n',
            ),
            Text(
              'Kibon Donjak(Posições):\n\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Ju-Tchum Seogi Momtong Jirugi\n\n'
              'Ap Seogi RanSonnal Mok Jirugi\n\n',
            ),
            Text(
              'Formas(Sequência):\n\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Taeguk Il Jang\n\n',
            ),
            SizedBox(height: 20.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MarromPoomsae()),
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

class MarromPoomsae extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taeguk 6 Jang'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: 'jcBwWo4wN7c',
              flags: YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            ),
          ),
          SizedBox(height: 20), // Ajustando o espaço entre o vídeo e o botão
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MarromHome(),
                ),
              );
            },
            child: Text('Voltar'),
          ),
        ],
      ),
    );
  }
}
