import 'package:location_social_media/pages/chat_message/all_message_user.dart';
import 'package:location_social_media/models/model.dart';
import 'package:flutter/material.dart';
import 'package:location_social_media/pages/profile_page.dart';
import 'package:location_social_media/pages/time_line.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePagePageState();
}

class _HomePagePageState extends State<HomePage> {
  late ScrollController _scrollController;
  bool isScrolled = false;
  final List<NavigationDestination> destinations = [
    for (var item in navBtn)
      NavigationDestination(
        icon: item.navIcon,
        label: item.navName,
      )
  ];

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_listenToScrollChange);
    super.initState();
  }

  _listenToScrollChange() {
    if (_scrollController.offset >= 100.0) {
      setState(() {
        isScrolled = true;
      });
    } else {
      setState(() {
        isScrolled = false;
      });
    }
  }

  int _selectedIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int idx) {
          setState(() {
            _selectedIndex = idx;
          });
        },
        //画面下部にあるメニューのラベルを非表示する
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        indicatorColor: Color.fromARGB(255, 211, 219, 255),
        selectedIndex: _selectedIndex,
        animationDuration: const Duration(seconds: 1),
        destinations: <Widget>[
          NavigationDestination(
            icon: destinations[0].icon,
            label: destinations[0].label,
            selectedIcon: const Icon(Icons.home_outlined),
          ),
          NavigationDestination(
            icon: destinations[1].icon,
            label: destinations[1].label,
            selectedIcon: Icon(Icons.chat_bubble_outline),
          ),
          NavigationDestination(
            icon: destinations[2].icon,
            label: destinations[2].label,
            selectedIcon: Icon(Icons.location_on_outlined),
          ),
          NavigationDestination(
            icon: destinations[3].icon,
            label: destinations[3].label,
            selectedIcon: Icon(Icons.search_outlined),
          ),
          NavigationDestination(
            icon: destinations[4].icon,
            label: destinations[4].label,
            selectedIcon: Icon(Icons.person_outline_rounded),
          )
        ],
      ),
      body: <Widget>[
        // カレンダー
        const TimeLine(),
        // チャット
        AllMessageUser(),
        // ロケーション
        Center(child: Text(destinations[2].label)),
        // ユーザ検索
        Center(child: Text(destinations[3].label)),
        // プロフィール
        const ProfilePage()
      ][_selectedIndex],
    );
  }
}
