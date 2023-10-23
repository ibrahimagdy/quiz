import 'package:flutter/material.dart';

class FeelingWidget extends StatelessWidget{
  final String image;
  final String text;

  const FeelingWidget({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        GestureDetector(
          onTap: (){

          },
          child: Image(
            image: AssetImage(image),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: theme.textTheme.bodySmall,
        ),
      ],
    );

  }

}