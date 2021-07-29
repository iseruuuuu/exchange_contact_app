import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


class InstagramBarcodeItem extends StatelessWidget {
  const InstagramBarcodeItem({
    Key? key,
    required this.Instagram,
  }) : super(key: key);

  final String Instagram;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Instagram',
          style: TextStyle(
            fontSize: 30,
            color: Colors.purple,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.purple,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: QrImage(
            data: 'https://www.instagram.com/' + Instagram,
            size: MediaQuery.of(context).size.width / 2.7,
          ),
        ),
      ],
    );
  }
}


