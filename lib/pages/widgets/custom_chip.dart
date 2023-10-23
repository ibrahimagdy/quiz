import 'package:flutter/material.dart';

class CustomFilterChip extends StatefulWidget {
  final String label;

  const CustomFilterChip({
    super.key,
    required this.label,
  });

  @override
  _CustomFilterChipState createState() => _CustomFilterChipState();
}

class _CustomFilterChipState extends State<CustomFilterChip> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.label),
      backgroundColor: isSelected ? const Color(0xFFf4ebff) : Colors.white,
      shape: const StadiumBorder(side: BorderSide(
        color: Color(0xffD6BBFB)
      )),
      onSelected: (bool value) {
        setState(() {
          isSelected = value;
        });
      },
    );
  }
}