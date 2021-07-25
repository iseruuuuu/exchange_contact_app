import 'package:exchange_contact_app/component/keybord_item.dart';
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
            leading: TextButton(
              onPressed: () => context.read<SettingScreenController>().onTapBack(),
              child: const Text(
                '戻る',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              KeybordItem(
                name: 'LINE',
                color: Colors.green,
                onChange: context.read<SettingScreenController>().onChangeLine(text),
              ),
              KeybordItem(
                name: 'Twiter'
                ,color: Colors.lightBlueAccent,
                onChange: context.read<SettingScreenController>().onChangeTwiter(text),
              ),
              KeybordItem(
                name: 'Instagram',
                color: Colors.deepPurple,
                onChange: context.read<SettingScreenController>().onChangeTwiter(text),
              ),
              KeybordItem(
                name: 'Facebook'
                ,color: Colors.blue,
                onChange: context.read<SettingScreenController>().onChangeTwiter(text),
              ),
            ],
          ),
        );
      },
    );
  }
}
