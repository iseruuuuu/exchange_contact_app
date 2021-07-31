import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class FacebookBarcodeItem extends StatelessWidget {
  const FacebookBarcodeItem({
    Key? key,
    required this.Facebook,
  }) : super(key: key);

  final String Facebook;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Facebook',
          style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
          ),
        ),
        GestureDetector(
          onTap: () {
            print(Facebook);
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: QrImage(
              data: Facebook,
              size: MediaQuery.of(context).size.width / 2.7,
            ),
          ),
        ),
      ],
    );
  }
}
