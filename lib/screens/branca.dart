import 'package:flutter/material.dart';
import 'package:TkFlow/main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
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
                    MaterialPageRoute(builder: (context) => BrancaPoomsae()),
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

class BrancaPoomsae extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saju Jirigui'),
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
              initialVideoId: '7qAMh9QQG6I',
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
                  builder: (context) => BrancaHome(),
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
