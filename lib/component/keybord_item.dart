import 'package:flutter/material.dart';

class KeybordItem extends StatelessWidget {
  const KeybordItem({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name),

        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'URL',
          ),
        ),
      ],
    );
  }
}