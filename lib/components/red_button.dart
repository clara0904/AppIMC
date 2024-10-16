import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;

  const RedButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: const Color(0xFFEB1555),
        margin: const EdgeInsets.only(top: 5.0),
        height: 60.0,
        child: Center(
          child: Text(text, style: const TextStyle(fontSize: 30.0))
        ),
      )
    );
  }
}