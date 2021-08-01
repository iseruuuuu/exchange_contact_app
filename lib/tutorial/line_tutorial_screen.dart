import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';

class LineTutorialScreen extends StatelessWidget {
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
      //TODO もう少し大きくした方がいいかも！！
      imageAssetPath: 'assets/LINE01.jpg',
      title: 'URLの取得方法①',
      body: 'LINEのホームの追加画面から\n'
          '「QRコード」を選択します。',
      doAnimateImage: true,
    ),
    PageModel(
      color: Colors.blueAccent,
      imageAssetPath: 'assets/LINE02.jpg',
      title: 'URLの取得方法②',
      body: 'QRコードを読み込む画面から\n'
          '「マイQRコード」を押します。\n'
      //TODO　アイコンを後で探す。
          '',
      doAnimateImage: true,
    ),
    PageModel(
      color: Colors.green,
      //TODO もう少し大きくした方がいいかも！！
      imageAssetPath: 'assets/LINE03.jpg',
      title: 'URLの取得方法③',
      body: '「他のアプリ」を押してください\n'
          '「コピー」を押してください',
      doAnimateImage: true,
    ),

    PageModel(
      color: Colors.green,
      //TODO もう少し大きくした方がいいかも！！
      imageAssetPath: 'assets/LINE04.PNG',
      title: 'URLの取得方法④',
      body: 'メモ帳などを開いてください。\n'
          'URLを貼り付けてください。',
      doAnimateImage: true,
    ),
    PageModel.withChild(
      child: const Padding(
        padding: EdgeInsets.only(bottom: 25.0),
        child: Text(
          "さあ、登録してみよう!!",
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
