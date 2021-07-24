
/*
import 'package:flutter/material.dart';

class TopPage extends StatefulWidget {
  TopPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  List<BottomNavigationEntity> navigationList = [

    BottomNavigationEntity(
      title: 'ポイント獲得',
      icon: Icons.control_point_duplicate,
      page: PointListPage(),
    ),

    BottomNavigationEntity(
      title: 'ブースト',
      icon: Icons.trending_up,
      page: WatchVideoPage(),
    ),
  ];



  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: navigationList[selectedIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (int newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
        items: navigationList.map((item) => BottomNavigationBarItem(
          icon: Icon(item.icon),
          label: item.title,
        )).toList(),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class BottomNavigationEntity {
  String title;
  IconData icon;
  Widget page;

  BottomNavigationEntity({required this.title,required this.icon,required this.page});
}

 */