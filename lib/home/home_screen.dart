import 'package:exchange_contact_app/component/shared_preferences.dart';
import 'package:ai_barcode/ai_barcode.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_screen_state.dart';
import 'package:qr_flutter/qr_flutter.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  CreatorController? _creatorController;

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
                Icons.face,
                color: Colors.blueAccent,
                size: 30,
              ),
            ),
          ),
          body: Container(
            width: double.infinity,
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                  Column(
                    children: [
                      const Text(
                        'LINE',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                        ),
                      ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        child: QrImage(
                          data: Line,
                          size: MediaQuery.of(context).size.width / 2.5,
                        ),
                      ),
                    ],
                  ),

                Column(
                  children: [
                    const Text(
                      'Twiter',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.lightBlueAccent,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: QrImage(
                        data: 'https://twitter.com/' + Twiter,
                        size: MediaQuery.of(context).size.width / 2.5,
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    const Text(
                      'Instagram',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.purple,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: QrImage(
                        data: 'https://www.instagram.com/' + Instagram,
                        size: MediaQuery.of(context).size.width / 2.5,
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    const Text(
                      'Facebook',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: QrImage(
                        data: Facebook,
                        size: MediaQuery.of(context).size.width / 2.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
