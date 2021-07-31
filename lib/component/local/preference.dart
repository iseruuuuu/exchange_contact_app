import 'package:native_shared_preferences/native_shared_preferences.dart';
import 'package:enum_to_string/enum_to_string.dart';

enum Preference {
  //TODO後で追加する。
  LineID,
  TwiterID,
  InstagramID,
  FaceBookID,
  TUTORIAL_DONE,
  tutorialDone,
}

  extension PreferenceKeyExtension on Preference {
  String get keyString {
    return EnumToString.convertToString(this);
  }
  String get defaultValue {
    return '';
  }
  Future<bool> setString(String value) async {
    final preference = await NativeSharedPreferences.getInstance();
    return await preference.setString(keyString, value);
  }
  Future<String> getString() async {
    final preference = await NativeSharedPreferences.getInstance();
    if (!preference.containsKey(keyString)) {
      return defaultValue;
    }
    return preference.getString(keyString) ?? defaultValue;
  }

  Future<bool> setBool(bool value) async {
    final preference = await NativeSharedPreferences.getInstance();
    return await preference.setBool(keyString, value);
  }
  Future<bool?> getBool() async {
    final preference = await NativeSharedPreferences.getInstance();
    if (preference.containsKey(keyString)) {
      return preference.getBool(keyString);
    }
    return false;
  }

}