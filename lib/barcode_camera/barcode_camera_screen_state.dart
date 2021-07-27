import 'package:exchange_contact_app/component/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

part 'barcode_camera_screen_state.freezed.dart';

@freezed
abstract class BarcodeCameraScreenState with _$BarcodeCameraScreenState {
  const factory BarcodeCameraScreenState() = _BarcodeCameraScreenState;

}
class BarcodeCameraScreenController extends StateNotifier<BarcodeCameraScreenState> with LocatorMixin {
  BarcodeCameraScreenController({
    required this.context,
    required this.sharePreference,
  }) : super (const BarcodeCameraScreenState());

  final BuildContext context;
  final SharePreference sharePreference;

  @override
  void initState() {
    super.initState();
  }

  Future barcodeScanning() async {
    print('aaaaa');
  }

  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
        '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
        .listen((barcode) => print(barcode));
  }

  Future<void> scanQR() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;

    /*TODO  後で記載する
    setState(() {
      _scanBarcode = barcodeScanRes;
    });

     */


  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;

    /*TODO  後で記載する
    setState(() {
      _scanBarcode = barcodeScanRes;
    });
     */
  }
}
