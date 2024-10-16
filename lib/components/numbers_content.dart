import 'package:flutter/material.dart';

class NumbersContent extends StatelessWidget {

  final String title;
  final Widget valor;
  final List<Widget> acoes;
  NumbersContent({super.key, required this.title, required this.valor, required this.acoes});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 25.0,
            color: Colors.white70,
          ),
        ),
        valor,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: acoes,
        ),
        
      ],
    );
  }
}