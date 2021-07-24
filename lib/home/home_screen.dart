import 'package:flutter/material.dart';
import '../component/cell_item.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'home_screen_state.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String  = '';

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<HomeScreenController, HomeScreenState>(
      create: (context) => HomeScreenController(context: context),
      builder: (context, _) {
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
      },
    );
  }
}
