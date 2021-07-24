import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

class CellItem extends StatelessWidget {
  const CellItem({
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
        Text(
          name,
          style: TextStyle(
            fontSize: 30,
            color: color,
          ),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(20),
          child: BarcodeWidget(
            barcode: Barcode.code128(),
            //後で追加
            data: 'int',
            width: MediaQuery.of(context).size.width * 0.3,
            height: 110,
            drawText: false,
          ),
        ),
      ],
    );
  }
}