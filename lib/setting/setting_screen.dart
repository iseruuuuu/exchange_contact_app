import 'package:exchange_contact_app/component/local/shared_preferences.dart';
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
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: AppBar(
              elevation: 2,
              backgroundColor: Colors.white,
              title: Row(
                children: [
                  TextButton(
                    onPressed: () => context.read<SettingScreenController>().onTapBack(),
                    child: const Text(
                      '戻る',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () => context.read<SettingScreenController>().onTapStore(),
                    child: const Text(
                      '保存',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              automaticallyImplyLeading: false,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                LINEKeyboard(Line: Line),
                TwiterKeyboard(Twiter: Twiter),
                InstagramKeyboard(Instagram: Instagram),
                FaceBookKeyboard(FaceBook: FaceBook),
              ],
            ),
          ),
        );
      },
    );
  }
}

class LINEKeyboard extends StatelessWidget {
  const LINEKeyboard({
    Key? key,
    required this.Line,
  }) : super(key: key);

  final String Line;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'LINE\n'
              + Line,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.green,
          ),
          textAlign: TextAlign.center,
        ),
        TextField(
          keyboardType: TextInputType.url,
          onChanged: (text) {
            context.read<SettingScreenController>().onChangeLine(text);
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'URL',
          ),
        ),
        ElevatedButton(
          onPressed: () => context.read<SettingScreenController>().onTapLineTutorial(),
          child: const Text('LINEの登録方法'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
          ),
        ),
      ],
    );
  }
}

class TwiterKeyboard extends StatelessWidget {
  const TwiterKeyboard({
    Key? key,
    required this.Twiter,
  }) : super(key: key);

  final String Twiter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Twiter\n'
              + Twiter,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.lightBlueAccent,
          ),
          textAlign: TextAlign.center,
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          onChanged: (text2) {
            context.read<SettingScreenController>().onChangeTwiter('@' + text2);
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'TwiterID',
          ),
        ),
        ElevatedButton(
            onPressed: () => context.read<SettingScreenController>().onTapTwiterTutorial(),
            child: const Text('Twiterの登録方法'),
          style: ElevatedButton.styleFrom(
            primary: Colors.lightBlueAccent,
          ),
        ),
      ],
    );
  }
}

class InstagramKeyboard extends StatelessWidget {
  const InstagramKeyboard({
    Key? key,
    required this.Instagram,
  }) : super(key: key);

  final String Instagram;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Instagram\n'
              '' + Instagram,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.deepPurple,
          ),
          textAlign: TextAlign.center,
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          onChanged: (text3) {
            context.read<SettingScreenController>().onChangeInstagram(text3);
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'InstagramID',
          ),
        ),
        ElevatedButton(
            onPressed: () => context.read<SettingScreenController>().onTapInstagramTutorial(),
            child: const Text('Instagramの登録方法'),
          style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple,
          ),
        ),
      ],
    );
  }
}

class FaceBookKeyboard extends StatelessWidget {
  const FaceBookKeyboard({
    Key? key,
    required this.FaceBook,
  }) : super(key: key);

  final String FaceBook;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Facebook\n'
              + FaceBook,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.indigo,
          ),
          textAlign: TextAlign.center,
        ),
        TextField(
          keyboardType: TextInputType.url,
          onChanged: (text4) {
            context.read<SettingScreenController>().onChangeFaceBook(text4);
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'URL',
          ),
        ),
        ElevatedButton(
          onPressed: () => context.read<SettingScreenController>().onTapFaceBookTutorial(),
          child: const Text('Facebookの登録方法'),
          style: ElevatedButton.styleFrom(
            primary: Colors.indigo, //ボタンの背景色
          ),
        ),
      ],
    );
  }
}
