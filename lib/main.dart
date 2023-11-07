import 'package:bulloak_fin_mgt_fin_mgt/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'google_nav/history/history_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: const HistoryNav(),
    );
  }
}
