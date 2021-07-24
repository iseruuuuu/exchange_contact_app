import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'home_screen_state.freezed.dart';

@freezed
abstract class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState() = _HomeScreenState;

}
class HomeScreenController extends StateNotifier<HomeScreenState> with LocatorMixin {
  HomeScreenController({required this.context}) : super (const HomeScreenState());

  final BuildContext context;


  void initState() {
    //TODO データの取得
  }

  void onTapStore() {
    //TODO データの保存
  }

}