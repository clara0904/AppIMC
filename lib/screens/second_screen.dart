import 'package:appimc/components/card.dart';
import 'package:appimc/components/red_button.dart';
import 'package:appimc/components/resultado.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final int altura;
  final int peso;
  final int idade;

  const SecondScreen({super.key, required this.altura, required this.peso, required this.idade,});

  @override
  Widget build(BuildContext context) {
    double imc = peso / ((altura / 100) * (altura / 100)); 
    String categoria = '';
    String descricao = '';

    if (imc < 18.5) {
      categoria = 'ABAIXO DO PESO';
      descricao = 'Você tem peso corporal abaixo do normal. Você pode comer um pouco mais.';
    } else if (imc >= 18.5 && imc <= 24.9) {
      categoria = 'NORMAL';
      descricao = 'Parabéns! Seu peso está dentro do normal. Continue mantendo seu estilo de vida saudável.';
    } else if (imc >= 25 && imc <= 29.9) {
      categoria = 'SOBREPESO';
      descricao = 'Você está com sobrepeso. Talvez seja uma boa hora para revisar seus hábitos e buscar mais equilíbrio.';
    } else if (imc >= 30 && imc <= 34.9) {
      categoria = 'OBESIDADE GRAU I';
      descricao = 'Você está no estágio de obesidade grau I. Pequenas mudanças podem fazer uma grande diferença para sua saúde.';
    } else if (imc >= 35 && imc <= 39.9) {
      categoria = 'OBESIDADE GRAU II';
      descricao = 'Você está no estágio de obesidade grau II. Considere adotar um plano de cuidados com a saúde para melhorar seu bem-estar.';
    } else {
      categoria = 'OBESIDADE GRAU III';
      descricao = 'Você está no estágio de obesidade grau III. Um acompanhamento médico pode te ajudar a encontrar o melhor caminho para uma vida mais saudável.';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC', 
          style: TextStyle(
            fontSize: 25.0
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0, top: 5.0, left: 10.0),
            child: 
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Seu resultado', 
                  style: TextStyle(
                    fontSize: 40.0, 
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CustomCard(
                    colorCard: const Color(0xFF1D1E30), 
                    child: 
                      Resultado(categoria: categoria, valor: imc.toStringAsFixed(1), descricao: descricao),
                  ),
                ),
              ],
            ),
          ),
          RedButton(text: 'RECALCULAR', onTap: (){
          Navigator.pop(context,);
        }),
      ], 
      )
    );
  }
}