import 'package:flutter/material.dart';
class AddIcon extends StatelessWidget {
  final String text;
  final IconData symbol;

  AddIcon(this.text, this.symbol);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          symbol,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          '$text',
          style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}