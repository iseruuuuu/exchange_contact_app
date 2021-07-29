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
          // when user select SKIP
          Navigator.pop(context);
        },
        finishCallback: () {
          // when user select NEXT
          Navigator.pop(context);
        },
      ),
    );
  }

  final pages = [
    PageModel(
      color: const Color(0xFF95cedd),
      //TODO 後で作る。
      imageAssetPath: 'assets/0.png',
      title: 'QRコードで連絡先を交換できる！',
      body: 'あらかじめ登録することで、簡単に連絡先を渡すことができます。',
      doAnimateImage: true,
    ),

    PageModel(
      color: Colors.blueAccent,
      imageAssetPath: 'assets/1.png',
      title: '相手に連絡先を渡す方法',
      body: 'カメラまたは、このアプリを開いてもらってください。\n'
          'そして、あなたのQRコードを見せてあげてください。',
      doAnimateImage: true,
    ),

    PageModel(
      color: Colors.green,
      imageAssetPath: 'assets/1.png',
      title: 'アカウントの変更方法',
      body: '設定画面にていつでも変更可能です。\n'
          '👤のボタンを押してみてください',
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
