import 'package:flutter/material.dart';

class FeatureWidget extends StatelessWidget{
  const FeatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      margin: const EdgeInsets.symmetric(horizontal: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xffECFDF3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Positive Vibes",
            style: theme.textTheme.bodyMedium!.copyWith(
                color: const Color(0xff344054),
                fontWeight: FontWeight.w700
            ),
          ),
          Row(
            children: [
              Text(
                "Boost your mood with \npositive vibes",
                style: theme.textTheme.bodyMedium,
              ),
              const Image(
                  image: AssetImage(
                      "assets/images/feature_pic.png",
                  ),
              )
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.play_circle,
                color: Color(0xff32D583),
                size: 30,
              ),
              const SizedBox(width: 8),
              Text(
                "10 mins",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}