import 'package:flutter/material.dart';

//画面下部のモデルでを作成してカプセル化を行う
class Model {
  final int navId;
  final String navName;
  final Icon navIcon;
  final int navSize;
  late bool? status;
  late int? navIndex;
  // コンストラクタを作成して全て必須とする
  Model(
      {required this.navId,
      required this.navName,
      required this.navIcon,
      required this.navSize,
      this.navIndex,
      this.status});

  set navIndexSelected(int navIndexSelected) {
    navIndex = navIndexSelected;
  }
}

// ナビゲーションを行う際に使用するリストを作成する
List<Model> navBtn = [
  Model(
      navId: 1,
      navName: "TimeLine",
      navIcon: const Icon(Icons.home),
      navSize: 30),
  Model(
      navId: 0,
      navName: "Chat",
      navIcon: const Icon(
        Icons.chat,
      ),
      navSize: 30),
  Model(
      navId: 2,
      navName: "Location",
      navIcon: const Icon(Icons.location_on),
      navSize: 30),
  Model(
      navId: 3,
      navName: "Search",
      navIcon: const Icon(Icons.search),
      navSize: 30),
  Model(
      navId: 4,
      navName: "Profile",
      navIcon: const Icon(Icons.person),
      navSize: 30),
];
