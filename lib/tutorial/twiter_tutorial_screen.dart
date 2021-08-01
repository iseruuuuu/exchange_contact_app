import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';

class TwiterTutorialScreen extends StatelessWidget {
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
      imageAssetPath: 'assets/Twiter01.jpg',
      title: 'URLの取得方法①',
      body: 'Twiterの「Profile」を開いてください。',
      doAnimateImage: true,
    ),
    PageModel(
      color: Colors.blueAccent,
      imageAssetPath: 'assets/Twiter02.jpg',
      title: 'URLの取得方法②',
      body: '@を除いたアドレスを記入してください。\n',
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
