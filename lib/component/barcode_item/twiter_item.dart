import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TwiterBarcodeItem extends StatelessWidget {
  const TwiterBarcodeItem({
    Key? key,
    required this.Twiter,
  }) : super(key: key);

  final String Twiter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Twiter',
          style: TextStyle(
            fontSize: 30,
            color: Colors.lightBlueAccent,
          ),
        ),
        GestureDetector(
          onTap: () {
            print(Twiter);
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.lightBlueAccent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: QrImage(
              data: 'https://twitter.com/' + Twiter,
              size: MediaQuery.of(context).size.width / 2.7,
            ),
          ),
        ),
      ],
    );
  }
}
