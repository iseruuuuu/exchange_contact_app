import 'package:exchange_contact_app/component/FaceBook/facebook_item.dart';
import 'package:exchange_contact_app/component/Instagram/instagram_item.dart';
import 'package:exchange_contact_app/component/LINE/line_item.dart';
import 'package:exchange_contact_app/component/Twiter/twiter_item.dart';
import 'package:exchange_contact_app/component/shared_preferences.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_screen_state.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<HomeScreenController, HomeScreenState>(
      create: (context) => HomeScreenController(
        context: context,
        sharePreference: SharePreference(),
      ),
      builder: (context, _) {
        final Line = context.select<HomeScreenState, String>((state) => state.LineID);
        final Twiter = context.select<HomeScreenState, String>((state) => state.TwiterID);
        final Instagram = context.select<HomeScreenState, String>((state) => state.InstagramID);
        final Facebook = context.select<HomeScreenState, String>((state) => state.FaceBookID);
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 2,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () => context.read<HomeScreenController>().onTapSetting(),
              icon: const Icon(
                Icons.account_circle,
                color: Colors.blueAccent,
                size: 45,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () => context.read<HomeScreenController>().onTapTutorial(),
                icon: const Icon(
                  Icons.warning_amber_outlined,
                  color: Colors.blueAccent,
                  size: 30,
                ),

              ),
            ],
          ),
          body: SizedBox(
            width: double.infinity,
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                LineBarcodeItem(Line: Line),
                TwiterBarcodeItem(Twiter: Twiter),
                InstagramBarcodeItem(Instagram: Instagram),
                FacebookBarcodeItem(Facebook: Facebook),
              ],
            ),
          ),
        );
      },
    );
  }
}

