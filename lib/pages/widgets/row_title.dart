import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowTitle extends StatelessWidget{
  final String title;
  final String endTitle;
  final Color titleColor;

  const RowTitle({
    super.key,
    required this.title,
    required this.titleColor,
    required this.endTitle
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: theme.textTheme.bodyLarge,
          ),
          Row(
            children: [
              Text(
                endTitle,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: titleColor,
                ),
              ),
               Icon(
                CupertinoIcons.forward,
                color: titleColor,
              ),
            ],
          ),
        ],
      ),
    );

  }

}