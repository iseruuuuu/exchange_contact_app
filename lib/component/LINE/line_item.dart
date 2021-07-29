import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class LineBarcodeItem extends StatelessWidget {
  const LineBarcodeItem({
    Key? key,
    required this.Line,
  }) : super(key: key);

  final String Line;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'LINE',
          style: TextStyle(
            fontSize: 30,
            color: Colors.green,
          ),
        ),
        GestureDetector(
          onTap: () {
            print(Line);
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: QrImage(
              data: Line,
              size: MediaQuery.of(context).size.width / 2.7,
            ),
          ),
        ),
      ],
    );
  }
}
