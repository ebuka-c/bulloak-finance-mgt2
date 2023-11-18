import 'dart:convert';

import 'package:bulloak_fin_mgt_fin_mgt/routes/names.dart';
import 'package:bulloak_fin_mgt_fin_mgt/services/api_endpoints.dart';
import 'package:bulloak_fin_mgt_fin_mgt/services/helper_methods.dart';
import 'package:bulloak_fin_mgt_fin_mgt/widgets/custom_snackbar.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  // get connect
  final _getConnect = GetConnect();

  // loading
  final isLoading = false.obs;

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  Future<void> signUpUser({
    required String email,
    required String userName,
    required String password,
    required String referralCode,
  }) async {
    // loading
    isLoading.value = true;

    // shared pref
    final shp = await SharedPreferences.getInstance();

    var myBody = jsonEncode({
      "email": email,
      "password": password,
      "username": userName,
      "referral_code": referralCode,
    });

    try {
      Response response = await _getConnect.post(
        BulloakAPI.registerEndpoint,
        myBody,
        headers: myFreeHeaders(),
      );

      if (kDebugMode) print("REGISTER: ${response.body}");
      if (kDebugMode) print("STATUS: ${response.statusCode}");

      if (response.statusCode == 201) {
        // set data
        await shp.setString(EMAIL, email);
        await shp.setString(PASSWORD, password);

        isLoading.value = false;
        bulloakSnackbar(isError: false, message: 'Registration Successful');

        Get.toNamed(AppRoutes.otpverify);
      } else {
        isLoading.value = false;
        if (response.body['email'] != null) {
          bulloakSnackbar(
              isError: true, message: '${response.body['email'][0]}');
        } else if (response.body['username'] != null) {
          bulloakSnackbar(
              isError: true, message: '${response.body['username'][0]}');
        } else if (response.body['password'] != null) {
          bulloakSnackbar(
              isError: true, message: '${response.body['password'][0]}');
        } else if (response.body['Error'] != null) {
          bulloakSnackbar(
              isError: true, message: '${response.body['Error'][0]}');
        }
      }
    } catch (e) {
      isLoading.value = false;
      debugPrint("Register: $e");
    }
  }

  // Sign In
  Future<void> signInUser({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    // loading
    isLoading.value = true;

    // shared pref
    final shp = await SharedPreferences.getInstance();

    var myBody = jsonEncode({
      "email": email,
      "password": password,
    });

    try {
      Response response = await _getConnect.post(
        BulloakAPI.loginEndpoint,
        myBody,
        headers: myFreeHeaders(),
      );

      if (kDebugMode) print("LOGIN: ${response.body}");
      if (kDebugMode) print("STATUS: ${response.statusCode}");

      if (response.statusCode == 200) {
        // set data
        await shp.setString(EMAIL, email);
        await shp.setString(PASSWORD, password);
        await shp.setBool(IS_REMEMBER, rememberMe);

        isLoading.value = false;
        bulloakSnackbar(isError: false, message: 'Login Successful');
        Get.offAllNamed(AppRoutes.homenav);
      } else {
        isLoading.value = false;
        if (response.body['Error'] != null) {
          bulloakSnackbar(
              isError: true,
              message: 'Login Failed: ${response.body['Error'][0]}');
        } else if (response.body["error"] != null) {
          if (response.body["error"][0]
              .toString()
              .contains('This user is currently not active')) {
            bulloakSnackbar(
                isError: true, message: 'This user is currently not active');
            Get.toNamed(AppRoutes.otpverify);
          }
        }
      }
    } catch (e) {
      isLoading.value = false;
      debugPrint("Login: $e");
    }
  }

  // Verify Account
  Future<void> verifyAccount(String verificationCode) async {
    // loading
    isLoading.value = true;

    var myBody = jsonEncode({"verification_code": verificationCode});

    try {
      Response response = await _getConnect.post(
        BulloakAPI.verifyEmailEndpoint,
        myBody,
        headers: myFreeHeaders(),
      );

      if (kDebugMode) print("VERIFICATION: ${response.body}");
      if (kDebugMode) print("STATUS: ${response.statusCode}");

      if (response.statusCode == 200) {
        isLoading.value = false;
        bulloakSnackbar(
            isError: false, message: 'Account verification successful');
        Get.toNamed(AppRoutes.login);
      } else {
        isLoading.value = false;
        bulloakSnackbar(isError: true, message: response.body["error"]);
      }
    } catch (e) {
      isLoading.value = false;
      debugPrint("Verification: $e");
    }
  }
}
