import 'package:flutter/material.dart';

class ExerciseWidget extends StatelessWidget{
  final Color containerColor;
  final String iconImage;
  final String containerTitle;


  const ExerciseWidget({super.key, required this.containerColor, required this.iconImage, required this.containerTitle});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Container(
          height: 50,
          color: containerColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(iconImage),
              Text(containerTitle),
            ],
          ),
        ),
      ),
    );
  }

}