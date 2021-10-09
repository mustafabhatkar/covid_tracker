import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsContent extends StatelessWidget {
  final String label;
  final String numbers;
  final bool isHeader;
  final Color color;
  const StatsContent(
      {Key? key, required this.label, required this.numbers, this.isHeader = false,required this.color}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: TextStyle(fontSize: isHeader ? 14 : 12,color: color)),
        Text(numbers,
            style: TextStyle(
                fontSize: isHeader ? 26 : 16, fontWeight: FontWeight.bold,color: color))
      ],
    );
  }
}
