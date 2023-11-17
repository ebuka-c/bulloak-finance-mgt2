import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../colors.dart';
import '../../../widgets/custom_button.dart';

class ForgotPSWD extends StatelessWidget {
  const ForgotPSWD({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: GestureDetector(
                onTap: () => Get.back(),
                child: const Icon(Icons.arrow_back_ios_new)),
            title: Text(
              'Forgot Password',
              style: GoogleFonts.poppins(),
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Image.asset('assets/images/fgpswd.png'),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                    child: Text(
                      'Select which contact details we should use to reset your password',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: h * 0.03),
                    height: h * 0.13,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            width: 3, color: AppColors.primaryColor)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset('assets/icons/sms.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'via SMS',
                              style: GoogleFonts.poppins(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: h * 0.005,
                            ),
                            Text(
                              '+2341234567890',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.005,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: h * 0.03),
                    height: h * 0.13,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            width: 1, color: AppColors.secondaryColor)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset('assets/icons/email.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'via email',
                              style: GoogleFonts.poppins(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: h * 0.005,
                            ),
                            Text(
                              'omejec@gmail.com',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/otpverify');
                    },
                    child: CustomButton(
                      height: h * 0.08,
                      width: w * 0.85,
                      text: 'Continue',
                      color: AppColors.primaryColor,
                      circularRadius: 50,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x54000000),
                          offset: Offset(0, 4),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
