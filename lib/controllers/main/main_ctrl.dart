import 'package:anime_streaming_app/models/main/main_model.dart';
import 'package:anime_streaming_app/pages/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  changePage(index) {
    currentIndex.value = index;
  }

  List bnbItems = [
    BottomNavigationBarModel(
      svgIcon: 'assets/icons/Home.svg',
      title: 'Home',
    ),
    BottomNavigationBarModel(
      svgIcon: 'assets/icons/Search.svg',
      title: 'Search',
    ),
    BottomNavigationBarModel(
      svgIcon: 'assets/icons/Bookmark.svg',
      title: 'Favorites',
    ),
    BottomNavigationBarModel(
      svgIcon: 'assets/icons/User.svg',
      title: 'Profile',
    ),
  ];

  List children = [
    const HomePage(),
    Container(color: Colors.red),
    Container(color: Colors.amber),
    Container(color: Colors.blue),
  ];
}
