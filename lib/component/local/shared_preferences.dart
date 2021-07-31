import 'package:shared_preferences/shared_preferences.dart';
import 'package:enum_to_string/enum_to_string.dart';

enum PreferenceKey {
  //TODO　後で追加する。
  LineID,
  TwiterID,
  InstagramID,
  FaceBookID,
  TUTORIAL_DONE,
  tutorialDone,
}

class SharePreference {
  final preference = SharedPreferences.getInstance();

  Future<String> getString(PreferenceKey key) async {
    final pref = await preference;
    final value = pref.getString(EnumToString.convertToString(key)) ?? '';
    return value;
  }

  Future<void> setString(PreferenceKey key, String value) async{
    final pref = await preference;
    await pref.setString(EnumToString.convertToString(key), value);
  }

  Future<void> getBool(PreferenceKey key, bool value) async {
  final pref = await preference;
  final value = pref.getBool(EnumToString.convertToString(key)) ?? true;
 // return value;
}

 Future<void> setBool(PreferenceKey key, bool value) async {
   final pref = await preference;
   await pref.setBool(EnumToString.convertToString(key), value);
 }

}