import 'package:exchange_contact_app/component/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'setting_screen_state.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SettingScreenController, SettingScreenState>(
      create: (context) => SettingScreenController(context: context,sharePreference: SharePreference()),
      builder: (context, _) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(
                  onPressed: () => context.read<SettingScreenController>().onTapStore(),
                  child: const Text(
                    '保存',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
            //TODO　サイズの調整
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: TextButton(
                onPressed: () => context.read<SettingScreenController>().onTapBack(),
                child: const Text(
                  '戻る',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
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
