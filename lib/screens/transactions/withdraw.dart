import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';
import '../../widgets/custom_button.dart';

class Withdraw extends StatelessWidget {
  const Withdraw({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: (() => Get.back()),
            child: const Icon(Icons.arrow_back_ios),
          ),
          title: Text(
            ' Make a withdrawal',
            style: GoogleFonts.poppins(),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.05),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: h * 0.05),
                    child: Text(
                      'Minimum withdrawal = 0',
                      style: GoogleFonts.poppins(
                          fontSize: w * 0.04, color: AppColors.primaryColor),
                    ),
                  ),
                  Text(
                    'Minimum withdrawal = 99999999',
                    style: GoogleFonts.poppins(
                        fontSize: w * 0.04, color: AppColors.primaryColor),
                  ),
                ],
              ), //////////////
              SizedBox(height: h * 0.04),
              Container(
                margin: EdgeInsets.only(right: w * 0.45),
                child: Text(
                  'Enter Amount',
                  style: GoogleFonts.poppins(fontSize: w * 0.055),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: h * 0.02),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: ' Enter Amount',
                    focusedBorder: const OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(w * 0.05),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    labelStyle: const TextStyle(color: AppColors.fillText),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.02),
                        borderSide: const BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              SizedBox(height: h * 0.04),

              ExpansionTile(
                title: Text(
                  'Bitcoin',
                  style: GoogleFonts.poppins(),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_up,
                ),
                children: [
                  Container(
                    decoration: const BoxDecoration(border: Border()),
                  )
                ],
              ),
              SizedBox(height: h * 0.04),

              Container(
                padding: EdgeInsets.only(top: h * 0.02),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: ' Enter Address',
                    focusedBorder: const OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(w * 0.05),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    labelStyle: const TextStyle(color: AppColors.fillText),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w * 0.02),
                        borderSide: const BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              SizedBox(height: h * 0.15),
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: CustomButton(
                    height: h * 0.08,
                    width: w * 0.8,
                    text: 'Withdraw',
                    color: AppColors.secondaryColor,
                    circularRadius: 50,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
