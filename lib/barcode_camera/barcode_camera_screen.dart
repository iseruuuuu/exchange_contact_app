import 'package:exchange_contact_app/component/shared_preferences.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:flutter/material.dart';
import 'barcode_camera_screen_state.dart';
import 'package:provider/provider.dart';

class BarcodeCameraScreen extends StatelessWidget {
  const BarcodeCameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<BarcodeCameraScreenController, BarcodeCameraScreenState>(
      create: (context) => BarcodeCameraScreenController(
        context: context,
        sharePreference: SharePreference(),
      ),
      builder: (context, _) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              '',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  //onPressed: () => context.read<BarcodeCameraScreenController>().scanQR(),
                  onPressed: () => context.read<BarcodeCameraScreenController>().barcodeScanning(),
                  child: Text('読み込む'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
