import 'package:flutter/material.dart';

class WorkoutContainer extends StatelessWidget{
  final String containerIcon;
  final String containerTitle;
  final String containerDesc;

  const WorkoutContainer({
    super.key,
    required this.containerIcon,
    required this.containerTitle,
    required this.containerDesc
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              ImageIcon(
                  AssetImage(containerIcon),
                color: const Color(0xff717BBC),
              ),
              const SizedBox(width: 3),
              Text(
                containerTitle,
                style: theme.textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            containerDesc,
            style: theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );

  }

}