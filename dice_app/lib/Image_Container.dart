
import 'package:dice_app/StyleText.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class ImageConatiner extends StatefulWidget {
  const ImageConatiner({super.key});

  @override
  State<ImageConatiner> createState() {
    return _ImageConatiner();
  }
}

class _ImageConatiner extends State<ImageConatiner> {
  var rolldice = 1;
  RollDice(){
    setState(() {
      rolldice = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       
        Image.asset('assets/image/dice-$rolldice.png',width: 200,height: 200,),
        const SizedBox(
          height: 20,
        ),
        TextButton(onPressed: (){RollDice();},
         style: TextButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0), // Set rounded corners
            ),
            ),
        child: const Text("Roll" , style: TextStyle(fontSize: 20),))
      ],
    );
  }
}