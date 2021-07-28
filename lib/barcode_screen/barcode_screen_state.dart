import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:exchange_contact_app/component/shared_preferences.dart';

part 'barcode_screen_state.freezed.dart';

@freezed
abstract class BarcodeScreenState with _$BarcodeScreenState {
  const factory BarcodeScreenState({
    @Default('') String LineID,
    @Default('') String TwiterID,
    @Default('') String InstagramID,
    @Default('') String FaceBookID,
  }) = _BarcodeScreenState;

}
class BarcodeScreenController extends StateNotifier<BarcodeScreenState> with LocatorMixin {
  BarcodeScreenController({
    required this.context,
    required this.sharePreference,
  }) : super (const BarcodeScreenState());

  final BuildContext context;
  final SharePreference sharePreference;


  @override
  void initState() {
    super.initState();

    //creatorController = CreatorController();
    // _textEditingController = TextEditingController();
  }


}