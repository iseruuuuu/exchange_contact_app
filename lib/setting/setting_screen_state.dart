import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'setting_screen_state.freezed.dart';

@freezed
abstract class SettingScreenState with _$SettingScreenState {
  const factory SettingScreenState() = _SettingScreenState;

}
class SettingScreenController extends StateNotifier<SettingScreenState> with LocatorMixin {
  SettingScreenController({required this.context}) : super (const SettingScreenState());

  final BuildContext context;


  void initState() {
    //TODO データの取得
  }

  void onTapStore() {
    //TODO データの保存
    print('保存したよ');
    //TODO ラインのURLを保存

    //TODO TwiterのURLを保存

    //TODO instagramのURLを保存

    //TODO FaceBookのURLを保存

    //TODO 前の画面に戻る
    Navigator.of(context).pop();
  }

  void onTapBack() {
    Navigator.of(context).pop();
  }


}