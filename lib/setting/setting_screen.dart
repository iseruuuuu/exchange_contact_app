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
        final Line = context.select<SettingScreenState, String>((state) => state.LineID);
        final Twiter = context.select<SettingScreenState, String>((state) => state.TwiterID);
        final Instagram = context.select<SettingScreenState, String>((state) => state.InstagramID);
        final FaceBook = context.select<SettingScreenState, String>((state) => state.FaceBookID);
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 2,
            backgroundColor: Colors.white,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: TextButton(
                  onPressed: () => context.read<SettingScreenController>().onTapStore(),
                  child: const Text(
                    '保存',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
            ],
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                alignment: FractionalOffset.centerLeft,
                child: IconButton(
                  onPressed: () => context.read<SettingScreenController>().onTapBack(),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: KeyboardItem(Line, context, Twiter, Instagram, FaceBook),
          ),
        );
      },
    );
  }

  Column KeyboardItem(String Line, BuildContext context, String Twiter, String Instagram, String FaceBook) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'LINE\n'
                + Line,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.green,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            onChanged: (text) {
              context.read<SettingScreenController>().onChangeLine(text);
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'URL',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Text(''),
              Text(
                'Twiter\n'
                    + Twiter,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.lightBlueAccent,
                ),
                textAlign: TextAlign.center,
              ),
              IconButton(
                onPressed: () => context.read<SettingScreenController>().onTapTwiterTutorial(),
                icon: const Icon(
                    Icons.contact_support_rounded,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            onChanged: (text2) {
              context.read<SettingScreenController>().onChangeTwiter('@' + text2);
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'TwiterID',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'Instagram\n'
                '' + Instagram,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.deepPurple,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            onChanged: (text3) {
              context.read<SettingScreenController>().onChangeInstagram(text3);
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'InstagramID',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'Facebook\n'
                + FaceBook,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            onChanged: (text4) {
              context.read<SettingScreenController>().onChangeFaceBook(text4);
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'URL',
            ),
          ),
        ),
      ],
    );
  }
}
