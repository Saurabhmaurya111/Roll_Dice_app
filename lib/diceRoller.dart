import 'dart:math';
import 'package:flutter/material.dart';
final randomizer = Random();
class diceRoller extends StatefulWidget {

  const diceRoller({super.key});

  @override

  State<diceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<diceRoller> {

  var currentDice = 2;


  void rollDice() {
    currentDice  = randomizer.nextInt(6) + 1;
    setState(() { 
    // activeDice = 'assets/images/dice$diceRoll.png';
      
    });
    // print('image changing....');
  }


  @override
  Widget build(context){
    return  Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/dice$currentDice.png'
              , width: 200),
              const SizedBox(height: 20,),
              TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                //   padding: const EdgeInsets.only(top: 20,)
                // ,
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 28,
                    )),
                child: const Text('Roll Dice'),
              )
            ],
          );
  }
}