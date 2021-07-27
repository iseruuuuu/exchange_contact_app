import 'package:exchange_contact_app/component/cell_item.dart';
import 'package:exchange_contact_app/component/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'home_screen_state.dart';

import 'package:provider/provider.dart';

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
      create: (context) => HomeScreenController(context: context, sharePreference: SharePreference()),
      builder: (context, _) {
        final Line = context.select<HomeScreenState, String>((state) => state.Line);
        final Twiter = context.select<HomeScreenState, String>((state) => state.Twiter);
        final Instagram = context.select<HomeScreenState, String>((state) => state.Instagram);
        final Facebook = context.select<HomeScreenState, String>((state) => state.FaceBook);
        return Scaffold(



          appBar: AppBar(
            title: const Text(
              '',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            leading: IconButton(
              onPressed: () => context.read<HomeScreenController>().onTapSetting(),
              icon: const Icon(Icons.settings),
            ),
          ),
          body: Container(
            width: double.infinity,
            child: GridView.count(
              crossAxisCount: 2,
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
