import 'package:flutter/material.dart';

class AppReviewDialog extends StatelessWidget {
  const AppReviewDialog({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Column(
        children: const[
          Text(
            '気に入ったら応援してね♡',
            style: TextStyle(
              color: Colors.red,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 25),
          Text(
            'みんなの応援で',
            style: TextStyle(
                fontSize: 13,
                fontStyle: FontStyle.normal
            ),
          ),
          Text(
            'アプリがもっと進化するかも！',
            style: TextStyle(
                fontSize: 13,
                fontStyle: FontStyle.normal
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15) ,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 24,
            ),
          ),
          child: const Text(
            '★★★★★で応援',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {

          },
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 24,
            ),
          ),
          child: const Text(
            '今はしない',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}