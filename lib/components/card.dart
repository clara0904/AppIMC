import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color colorCard;
  final Widget child;
  const CustomCard({super.key, required this.colorCard, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: colorCard,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}

//color: Color(0xFF1D1E30),