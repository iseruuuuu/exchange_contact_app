import 'package:exchange_contact_app/component/barcode_item/facebook_item.dart';
import 'package:exchange_contact_app/component/barcode_item/instagram_item.dart';
import 'package:exchange_contact_app/component/barcode_item/line_item.dart';
import 'package:exchange_contact_app/component/barcode_item/twiter_item.dart';
import 'package:exchange_contact_app/component/local/shared_preferences.dart';
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
        return GestureDetector(
          onTap: () => context.read<HomeScreenController>().initState(),
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 3,
              backgroundColor: Colors.white,
              leading: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: IconButton(
                  onPressed: () => context.read<HomeScreenController>().onTapSetting(),
                  icon: const Icon(
                    Icons.account_circle,
                    color: Colors.blueAccent,
                    size: 40,
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: IconButton(
                    onPressed: () => context.read<HomeScreenController>().onTapTutorial(),
                    icon: const Icon(
                      Icons.contact_support_rounded,
                      color: Colors.blueAccent,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                Container(height: 50),
                Expanded(
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
              ],
            ),
          ),
        );
      },
    );
  }
}

