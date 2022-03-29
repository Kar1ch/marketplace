import 'package:flutter/material.dart';

class Card1 extends StatelessWidget{
  const Card1(
      {Key? key, required this.imagePath, required this.onClick, required this.label})
      : super(key: key);

  final String label;
  final String imagePath;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextButton(
        onPressed: () => onClick,
        child: Column(
          children: [
            Image.asset(imagePath),
            Text(label),
          ]
        )
      ),
    );
  }
}