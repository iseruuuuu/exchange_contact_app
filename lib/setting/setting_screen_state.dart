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
    final line = state.LineID;
    sharePreference.setString(PreferenceKey.LineID, line);

    final twiter = state.TwiterID;
    sharePreference.setString(PreferenceKey.TwiterID, twiter);

    final instagram = state.InstagramID;
    sharePreference.setString(PreferenceKey.InstagramID, instagram);

    final facebook = state.FaceBookID;
    sharePreference.setString(PreferenceKey.FaceBookID, facebook);

    Navigator.of(context).pop();

    //TODO 状態を反映させる
    initState();

    print(line);
    print(twiter);
    print(instagram);
    print(facebook);
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
  }

}
