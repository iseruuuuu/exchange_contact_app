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
          appBar: AppBar(
            title: Text('設定'),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text('保存'),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: const Text(
                    'LINEを登録',
                  ),
                ),
                TextField(),

                Text('Twiterを登録'),
                TextField(),
                Text('Instagramを登録'),
                TextField(),
                Text('FaceBookを登録'),
                TextField(),
              ],
            ),
          ),
        );
      },
    );
  }
}
