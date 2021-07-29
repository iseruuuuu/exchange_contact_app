import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:exchange_contact_app/setting/setting_screen.dart';
import 'package:exchange_contact_app/component/shared_preferences.dart';

part 'home_screen_state.freezed.dart';

@freezed
abstract class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    @Default('') String LineID,
    @Default('') String TwiterID,
    @Default('') String InstagramID,
    @Default('') String FaceBookID,
  }) = _HomeScreenState;
}

class HomeScreenController extends StateNotifier<HomeScreenState> with LocatorMixin {
  HomeScreenController({
    required this.context,
    required this.sharePreference,
  }) : super (const HomeScreenState());

  final BuildContext context;
  final SharePreference sharePreference;

  @override
  void initState() {
    super.initState();
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

  void onTapSetting() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SettingScreen(),
      ),
    );
  }

}
