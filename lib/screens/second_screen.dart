﻿import 'package:appimc/components/red_button.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: RedButton(text: 'voltar', onTap: (){
          Navigator.pop(context,);
        }),
      )
    );
  }
}