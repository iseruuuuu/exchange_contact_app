import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = TextEditingController();
  final String  = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: [
            CellWidget(name: 'LINE', color: Colors.green,),
            CellWidget(name: 'Twiter',color: Colors.lightBlueAccent,),
            CellWidget(name: 'Instagram',color: Colors.purple,),
          ],
        ),
      ),
    );
  }
}

class CellWidget extends StatelessWidget {
  const CellWidget({
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