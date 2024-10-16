import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;
  const CircleButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(width: 50.0, height: 50.0),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      onPressed: onPressed, 
      child: Icon(icon),
    );
  }
}