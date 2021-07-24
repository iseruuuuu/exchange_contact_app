import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'setting_screen_state.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SettingScreenController, SettingScreenState>(
      create: (context) => SettingScreenController(context: context),
      builder: (context, _) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(child: Text('LINEを登録'),),
                Text('Twiterを登録'),
                Text('Instagramを登録'),
                Text('FaceBookを登録'),
              ],
            ),
          ),
        );
      },
    );
  }
}
