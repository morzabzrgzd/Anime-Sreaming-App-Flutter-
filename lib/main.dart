import 'package:anime_streaming_app/constants/app_route.dart';
import 'package:anime_streaming_app/pages/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Anime Streaming',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Raleway',
      ),
      initialRoute: AppRoute.MAIN_ROUTE,
      getPages: [
        GetPage(name: AppRoute.MAIN_ROUTE, page: () => const MainPage()),
      ],
    );
  }
}
