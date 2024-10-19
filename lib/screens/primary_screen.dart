import 'package:appimc/components/circle_button.dart';
import 'package:appimc/components/red_button.dart';
import 'package:appimc/components/card.dart';
import 'package:appimc/screens/second_screen.dart';
import 'package:flutter/material.dart';
import '../components/icon_content.dart';
import '../components/numbers_content.dart';
class Primaryscreen extends StatefulWidget {
  const Primaryscreen({super.key});

  @override
  State<Primaryscreen> createState() => _PrimaryscreenState();
}

class _PrimaryscreenState extends State<Primaryscreen> {

  int _altura = 150;
  int _peso = 50;
  int _idade = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculadora IMC', style: TextStyle(fontSize: 25.0),),centerTitle: true,),
      body: Column(
        children:[ 
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CustomCard(
                    colorCard: Color(0xFF1D1E30),
                    child: Iconcontent(
                    icon: Icons.male, 
                    text: 'MASCULINO',
                    ),
                  ),
                ),
              Expanded(
                child: CustomCard(
                  colorCard: Color(0xFF1D1E30),
                  child: Iconcontent(
                    icon: Icons.female, 
                    text: 'FEMININO',
                  ),
                  
                ),
              ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              colorCard: const Color(0xFF1D1E30),
              child: NumbersContent(
                title: 'ALTURA',
                valor: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('$_altura', style: const TextStyle(fontSize: 60.0, fontWeight: FontWeight.w900)), 
                    const Text('cm')],
                ),
                acoes: [
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Colors.white30,
                        activeTrackColor: Colors.white,
                        thumbColor: const Color(0xFFEB1555),
                      ),
                      child: Slider(
                      value: _altura.toDouble(), 
                      min: 100.0,
                      max: 220.0,
                      onChanged: (double novoValor) {
                        setState(() {
                          _altura = novoValor.round();
                        });
                      },
                    ),
                    ),
                  )
                ],
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
                    child: NumbersContent(
                      title: 'PESO',
                      valor: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text('$_peso', style: const TextStyle(fontSize: 60.0, fontWeight: FontWeight.w900)), 
                          const Text('kg')],
                      ),
                      acoes: [
                        CircleButton(icon: Icons.remove, 
                        onPressed: () {
                          setState(() {
                            _peso--;
                          });
                        }),
                        CircleButton(icon: Icons.add, 
                        onPressed: () {
                          setState(() {
                            _peso++;
                          });
                        })
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    colorCard: const Color(0xFF1D1E30),
                    child: NumbersContent(
                      title: 'IDADE',
                      valor: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text('$_idade', style: const TextStyle(fontSize: 60.0, fontWeight: FontWeight.w900)), 
                          const Text('anos')],
                      ),
                      acoes: [
                        CircleButton(icon: Icons.remove, 
                        onPressed: () {
                          setState(() {
                            _idade--;
                          });
                        },),
                        CircleButton(icon: Icons.add, 
                        onPressed: () {
                          setState(() {
                            _idade++;
                          });
                        })
                      ],
                    ),
                  ),
                ),
              ], 
            ),
          ),  
          RedButton(text: 'CALCULAR', onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) { 
                  return SecondScreen(altura: _altura, peso: _peso, idade: _idade,);
                }
              ),
            );
          }),
        ],
      ),  
    );
  }
}
