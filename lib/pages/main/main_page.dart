// ignore_for_file: deprecated_member_use

import 'package:anime_streaming_app/constants/app_colors.dart';
import 'package:anime_streaming_app/controllers/main/main_ctrl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../home/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mainCtrl = Get.put(MainController());
    return Scaffold(
      backgroundColor: AppColors.backround,
      bottomNavigationBar: Obx(
        () => SizedBox(
          height: 65,
          child: BottomNavigationBar(
            backgroundColor: const Color(0xff1f222d),
            showSelectedLabels: true,
            elevation: 0,
            selectedFontSize: 14,
            onTap: (value) {
              mainCtrl.changePage(value);
            },
            unselectedFontSize: 14,
            currentIndex: mainCtrl.currentIndex.value,
            selectedItemColor: AppColors.primery,
            unselectedItemColor: AppColors.unSelected,
            type: BottomNavigationBarType.fixed,
            items: List.generate(
              mainCtrl.bnbItems.length,
              (index) => BottomNavigationBarItem(
                tooltip: mainCtrl.bnbItems[index].title,
                icon: SvgPicture.asset(
                  mainCtrl.bnbItems[index].svgIcon,
                  color: mainCtrl.currentIndex.value == index
                      ? AppColors.primery
                      : AppColors.unSelected,
                ),
                label: mainCtrl.bnbItems[index].title,
              ),
            ),
          ),
        ),
      ),
      body: Obx(() => mainCtrl.children[mainCtrl.currentIndex.value]),
      );
  }
}
