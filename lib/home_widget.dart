import 'package:exchange_contact_app/setting/setting_screen.dart';
import 'package:flutter/material.dart';
import 'component/cell_item.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SettingScreen(),
              ),
            );
          },
          icon: Icon(Icons.settings),
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
            CellItem(name: 'LINE',
                color: Colors.green
            ),
            CellItem(
              name: 'Twiter',
              color: Colors.lightBlueAccent,
            ),
            CellItem(
              name: 'Instagram',
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
