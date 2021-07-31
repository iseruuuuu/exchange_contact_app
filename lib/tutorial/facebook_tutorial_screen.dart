import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';

class FacebookTutorialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverBoard(
        pages: pages,
        showBullets: true,
        skipCallback: () {
          Navigator.pop(context);
        },
        finishCallback: () {
          Navigator.pop(context);
        },
      ),
    );
  }
  final pages = [
    PageModel(
      color: const Color(0xFF95cedd),
      //TODO 後で作る。
      imageAssetPath: 'assets/2.png',
      title: 'URLの取得方法①',
      body: 'メニューから「自分のプロフィールをみる\n'
          'を開いてください。',
      doAnimateImage: true,
    ),
    PageModel(
      color: Colors.blueAccent,
      imageAssetPath: 'assets/1.png',
      title: 'URLの取得方法②',
      body: '「...」を押してください',
      doAnimateImage: true,
    ),
    PageModel(
      color: Colors.green,
      imageAssetPath: 'assets/1.png',
      title: 'アカウントの変更方法',
      body: '「プロフィールのリンク」から\n'
          'リンクをコピーして貼り付けてください。',
      doAnimateImage: true,
    ),
    PageModel.withChild(
      child: const Padding(
        padding: EdgeInsets.only(bottom: 25.0),
        child: Text(
          "さあ、始めましょう",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
          ),
        ),
      ),
      color: const Color(0xFF5886d6),
      doAnimateChild: true,
    ),
  ];
}
