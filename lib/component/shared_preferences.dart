import 'package:shared_preferences/shared_preferences.dart';
import 'package:enum_to_string/enum_to_string.dart';

enum PreferenceKey {
  //TODO　後で追加する。
  LineID,
  TwiterID,
  InstagramID,
  FaceBookID,
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
}