import 'package:flutter/material.dart';

class KeybordItem extends StatelessWidget {
  const KeybordItem({
    Key? key,
    required this.name,
    required this.color,
  }) : super(key: key);

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            name,
            style: TextStyle(
              fontSize: 20,
              color: color,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'URL',
            ),
          ),
        ),
      ],
    );
  }
}