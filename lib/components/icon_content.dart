import 'package:flutter/material.dart';

class Iconcontent extends StatelessWidget {

  final IconData icon;
  final String text;

  const Iconcontent({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon, 
          color: Colors.white,
          size: 90,
        ),
        Text(text, 
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white70
          ),
        ),
      ],
    );
}
}