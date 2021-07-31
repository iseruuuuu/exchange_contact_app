import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:state_notifier/state_notifier.dart';

import '../local/shared_preferences.dart';

part 'keybord_item_state.freezed.dart';

@freezed
abstract class KeybordItemState with _$KeybordItemState {
  const factory KeybordItemState({
    @Default('') String LineID,
    @Default('') String TwiterID,
    @Default('') String InstagramID,
    @Default('') String FaceBookID,
  }) = _KeybordItemState;

}
class KeybordItemController extends StateNotifier<KeybordItemState> with LocatorMixin {
  KeybordItemController({
    required this.context,
    required this.sharePreference,
  }) : super (const KeybordItemState());

  final BuildContext context;
  final SharePreference sharePreference;

  @override
  void initState() {
    super.initState();
  }


  void onChangeLine(String text) {
    state = state.copyWith(
      LineID: text,
    );
    //TODO ラインのURLを保存
    final line = state.LineID;
    sharePreference.setString(PreferenceKey.LineID, line);
  }
  void onChangeTwiter(String text) {
    state = state.copyWith(
      TwiterID: text,
    );
    //TODO TwiterのURLを保存
    final twiter = state.TwiterID;
    sharePreference.setString(PreferenceKey.TwiterID, twiter);
  }

  void onChangeInstagram(String text) {
    state = state.copyWith(
      InstagramID: text,
    );
    //TODO instagramのURLを保存
    final instagram = state.InstagramID;
    sharePreference.setString(PreferenceKey.InstagramID, instagram);
  }

  void onChangeFaceBook(String text) {
    state = state.copyWith(
      FaceBookID: text,
    );
    //TODO FaceBookのURLを保存
    final facebook = state.FaceBookID;
    sharePreference.setString(PreferenceKey.FaceBookID, facebook);
  }
}