import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';

class TutorialScreen extends StatelessWidget {
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
      imageAssetPath: 'assets/2.png',
      title: '簡単に連絡先を交換！',
      body: 'あらかじめアドレスを登録することで、\n'
          '登録のためのQRコードを発行されます。',
      doAnimateImage: true,
    ),
    PageModel(
      color: Colors.blueAccent,
      imageAssetPath: 'assets/3.png',
      title: '自分の連絡先の渡し方',
      body: 'カメラを開いてもらってください。\n'
          'QRコードを読み込ませてください。',
      doAnimateImage: true,
    ),
    PageModel(
      color: Colors.green,
      imageAssetPath: 'assets/4.png',
      title: 'アカウントの変更方法',
      body: '設定画面にていつでも変更可能です。\n'
          '⚙︎を押して変更を行ってください。',
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
