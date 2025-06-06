import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp()); // Função principal que executa o aplicativo, chamando o widget MeuApp
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});  // Construtor da classe MeuApp, que é um widget sem estado

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey, // Cor de fundo da tela
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('imagens/stela.jpg'), // Imagem de perfil 
                radius: 50.0,
              ),
              // Informações sobre o texto
              Text(
                'Stela Rocha',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'DESENVOLVEDORA FLUTTER',
                style: TextStyle(
                  fontFamily: 'SourceSans3',
                  color: Color(0xFFB2EBF2),
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 250.0,
                child: Divider(color: Color(0xFFB2EBF2)), // Linha divisória com altura e cor definida
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone, // Ícone de telefone
                    size: 25.0,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    '+55 12345-6789',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.mail, size: 25.0, color: Colors.blueGrey),  // Ícone de e-mail
                  title: Text(
                    'stela@gmail.com',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
