import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  }
}
