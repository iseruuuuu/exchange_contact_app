import 'package:exchange_contact_app/component/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'setting_screen_state.freezed.dart';

@freezed
abstract class SettingScreenState with _$SettingScreenState {
  const factory SettingScreenState({
    @Default('') String LineID,
    @Default('') String TwiterID,
    @Default('') String InstagramID,
    @Default('') String FaceBookID,
}) = _SettingScreenState;

}
class SettingScreenController extends StateNotifier<SettingScreenState> with LocatorMixin {
  SettingScreenController({
    required this.context,
    required this.sharePreference,
  }) : super (const SettingScreenState());

  final BuildContext context;
  final SharePreference sharePreference;

  @override
  void initState() {
    sharePreference.getString(PreferenceKey.LineID).then((lineID) {
      if (lineID.isEmpty) return;
      state = state.copyWith(
        LineID: lineID,
      );
    });

    sharePreference.getString(PreferenceKey.TwiterID).then((TwiterID) {
      if (TwiterID.isEmpty) return;
      state = state.copyWith(
        TwiterID: TwiterID,
      );
    });

    sharePreference.getString(PreferenceKey.InstagramID).then((InstagramID) {
      if (InstagramID.isEmpty) return;
      state = state.copyWith(
        InstagramID: InstagramID,
      );
    });

    sharePreference.getString(PreferenceKey.FaceBookID).then((FaceBookID) {
      if (FaceBookID.isEmpty) return;
      state = state.copyWith(
        FaceBookID: FaceBookID,
      );
    });
  }

  void onTapStore() {
    //TODO ラインのURLを保存
    final line = state.LineID;
    sharePreference.setString(PreferenceKey.LineID, line);

    //TODO TwiterのURLを保存
    final twiter = state.TwiterID;
    sharePreference.setString(PreferenceKey.TwiterID, twiter);

    //TODO instagramのURLを保存
    final instagram = state.InstagramID;
    sharePreference.setString(PreferenceKey.InstagramID, instagram);

    //TODO FaceBookのURLを保存
    final facebook = state.FaceBookID;
    sharePreference.setString(PreferenceKey.FaceBookID, facebook);

    //TODO 前の画面に戻る
    Navigator.of(context).pop();
  }

  void onTapBack() {
    Navigator.of(context).pop();
  }

  void onChangeLine(String text) {
    state = state.copyWith(
      LineID: text,
    );
  }
  void onChangeTwiter(String text) {
    state = state.copyWith(
      TwiterID: text,
    );
  }

  void onChangeInstagram(String text) {
    state = state.copyWith(
      InstagramID: text,
    );
  }

  void onChangeFaceBook(String text) {
    state = state.copyWith(
      FaceBookID: text,
    );
    final facebook = state.FaceBookID;
    sharePreference.setString(PreferenceKey.FaceBookID, facebook);
  }

}
