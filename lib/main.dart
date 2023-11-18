import 'package:bulloak_fin_mgt_fin_mgt/colors.dart';
import 'package:bulloak_fin_mgt_fin_mgt/controllers/auth_controller.dart';
import 'package:bulloak_fin_mgt_fin_mgt/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
        fontFamily: 'poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      initialRoute: '/splashscreen',
      getPages: AppPages.routes,
      onInit: () {
        Get.put(AuthController(), permanent: true);
      },
    );
  }
}
