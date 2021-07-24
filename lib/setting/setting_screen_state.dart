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
}