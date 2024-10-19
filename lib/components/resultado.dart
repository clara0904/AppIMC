import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String categoria;
  final String valor;
  final String descricao;
  const Resultado({super.key, required this.categoria, required this.valor, required this.descricao});

  @override
  Widget build(BuildContext context) {
    Color corCategoria = obterCorCategoria(categoria);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          categoria,
          style: TextStyle(
            fontSize: 35.0,
            color: corCategoria,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          valor,
          style: const TextStyle(
            fontSize: 100.0,
            color: Colors.white70,
            fontWeight: FontWeight.w900,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Text(
            descricao,
            style: const TextStyle(
              fontSize: 25.0,
              color: Colors.white70,
            ),
          ),
        ),
      ],
    );
  }
}

Color obterCorCategoria(String categoria) {
  switch (categoria) {
    case 'ABAIXO DO PESO':
      return Colors.yellow; 
    case 'NORMAL':
      return Colors.green; 
    case 'SOBREPESO':
      return Colors.orange; 
    case 'OBESIDADE GRAU I':
      return Colors.deepOrange; 
    case 'OBESIDADE GRAU II':
      return Colors.red; 
    case 'OBESIDADE GRAU III':
      return Colors.redAccent; 
    default:
      return Colors.white; 
  }
}