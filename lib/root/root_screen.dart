import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  void initState() {
    super.initState();

  WidgetsBinding.instance!.addPostFrameCallback((_) async {
    var prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('isFirstLaunch') ?? true) {
      await Navigator.of(context).pushNamed('/tutorial');
    }

});
  }

  Widget build(BuildContext context) {
    return Container();
  }
}
