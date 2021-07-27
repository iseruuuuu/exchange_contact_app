import 'package:exchange_contact_app/component/cell_item.dart';
import 'package:exchange_contact_app/component/shared_preferences.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:barcode_widget/barcode_widget.dart';
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
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(20),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        //後で追加
                        data: Line,
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 110,
                        drawText: false,
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
                      color: Colors.white,
                      padding: const EdgeInsets.all(20),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        //後で追加
                        data: Twiter,
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 110,
                        drawText: false,
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
                      color: Colors.white,
                      padding: const EdgeInsets.all(20),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        //後で追加
                        data: Instagram,
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 110,
                        drawText: false,
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
                      color: Colors.white,
                      padding: const EdgeInsets.all(20),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        //後で追加
                        data: Facebook,
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 110,
                        drawText: false,
                      ),
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
