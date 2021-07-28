import 'package:exchange_contact_app/component/cell_item.dart';
import 'package:exchange_contact_app/component/shared_preferences.dart';
import 'package:ai_barcode/ai_barcode.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:barcode_widget/barcode_widget.dart';
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
          appBar: AppBar(
            title: const Text(
              '',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            leading: IconButton(
              onPressed: () => context.read<HomeScreenController>().onTapSetting(),
              icon: const Icon(Icons.settings),
            ),
            actions: [
              IconButton(
                onPressed: () => context.read<HomeScreenController>().onTapBarcodeCamera(),
                icon: const Icon(Icons.camera_alt),
              ),
            ],
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
                    QrImage(
                      data: 'https://twitter.com/blendthink',
                      size: MediaQuery.of(context).size.width / 3,
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
                    QrImage(
                      //data: 'https://twitter.com/$Twiter',
                      data: 'https://twitter.com/$Twiter',
                      size: MediaQuery.of(context).size.width / 3,
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
                    QrImage(
                      data: 'https://www.instagram.com/iseki_ryutaro',
                      size: MediaQuery.of(context).size.width / 3,
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
                    QrImage(
                      data: 'https://twitter.com/blendthinkkkk',
                      size: MediaQuery.of(context).size.width / 3,
                    ),
                  ],
                ),





                /*
                CellItem(name: 'LINE',
                    color: Colors.green
                ),
                CellItem(
                  name: 'Twiter',
                  color: Colors.lightBlueAccent,
                ),
                CellItem(
                  name: 'Instagram',
                  color: Colors.purple,
                ),

                 */
              ],
            ),
          ),
        );
      },
    );
  }
}
