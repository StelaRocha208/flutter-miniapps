// Importa a biblioteca matemática para usar funções como Random()
import 'dart:math';

import 'package:flutter/material.dart';


// Função principal que inicia o app
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFD2A679), // Cor de fundo
        appBar: AppBar( // Barra superior do app
          title: Text(
              'Dadoos', // Título exibido no AppBar
              style: TextStyle(
                color: Colors.white,
              ),
          ),
          backgroundColor:Color(0xFFCC8866), // Cor de fundo do AppBar
        ),
        body: Dadoos(), // Corpo do app com o widget personalizado Dadoos
      ),
    ),
  );
}

// Widget com estado (stateful), pois os dados mudam ao clicar
class Dadoos extends StatefulWidget {
  @override
  _DadoosState createState() => _DadoosState();
}

// Estado do widget Dadoos
class _DadoosState extends State<Dadoos> {
  int numeroDadoEsquerda = 1; // Valor inicial esquerdo
  int numeroDadoDireita = 1; // Valor inicial direito

 // Função que altera os valores dos dados aleatoriamente
  void alterarFacesDosDados() {
    setState(() {
      // Gera um número aleatório entre 1 e 6 para cada dado
      numeroDadoEsquerda = Random().nextInt(6) + 1;
      numeroDadoDireita = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row( // Exibe os dados lado a lado
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                alterarFacesDosDados(); // Muda os valores ao clicar
              },
              child: Image.asset('imagens/dado$numeroDadoEsquerda.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                alterarFacesDosDados(); // Muda os valores ao clicar
              },
              child: Image.asset('imagens/dado$numeroDadoDireita.png'),
            ),
          ),
        ],
      ),
    );
  }
}
