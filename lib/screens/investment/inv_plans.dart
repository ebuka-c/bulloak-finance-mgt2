import 'package:bulloak_fin_mgt_fin_mgt/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/inv_plans.dart';

class InvestmentPlans extends StatefulWidget {
  const InvestmentPlans({super.key});

  @override
  State<InvestmentPlans> createState() => _InvestmentPlansState();
}

class _InvestmentPlansState extends State<InvestmentPlans> {
  _InvestmentPlansState() {
    _selectedDuration = _selectDuration[0];
  }

  final _selectDuration = ['1 Week', '2 Weeks', '3 Weeks', '1 Month'];

  String? _selectedDuration = 'All Categories';

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
        title: Text(
          'INVESTMENT PLANS',
          style: GoogleFonts.poppins(),
        ),
      ),
      body: ListView.builder(
          itemCount: plans.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: h * 0.01),
              child: Center(
                child: Stack(children: [
                  Image.asset(plans[index]['image']),
                  Positioned(
                      top: h * 0.0135,
                      right: w * 0.05,
                      child: Image.asset(plans[index]['topbar'])),
                  Positioned(
                      top: h * 0.025,
                      right: w * 0.08,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '`${plans[index]['name']}'.toUpperCase(),
                            style: GoogleFonts.poppins(
                                fontSize: w * 0.038,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: h * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              plans[index]['ROI'],
                              style: GoogleFonts.poppins(
                                fontSize: w * 0.038,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                              ),
                            ),
                          ),
                          RichText(
                              text: TextSpan(
                                  style:
                                      GoogleFonts.poppins(color: Colors.black),
                                  children: <TextSpan>[
                                TextSpan(text: '${plans[index]['min']}    '),
                                TextSpan(
                                    text: 'Minimum',
                                    style:
                                        GoogleFonts.poppins(color: Colors.red)),
                              ])),
                          RichText(
                              text: TextSpan(
                                  style:
                                      GoogleFonts.poppins(color: Colors.black),
                                  children: <TextSpan>[
                                TextSpan(text: '${plans[index]['max']}    '),
                                TextSpan(
                                    text: 'Maximum',
                                    style:
                                        GoogleFonts.poppins(color: Colors.red)),
                              ])),
                          SizedBox(height: h * 0.025),
                          Text(
                            'Select Duration                                           ',
                            style: GoogleFonts.poppins(
                                fontSize: w * 0.035,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            height: 50,
                            width: w * 0.56,
                            child: DropdownButtonFormField(
                              iconDisabledColor: Colors.grey[700],
                              iconEnabledColor: Colors.grey[700],
                              value: _selectedDuration,
                              items: _selectDuration
                                  .map(
                                    (e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(
                                        e,
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey[700],
                                            fontSize: 15),
                                      ),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (value) {
                                setState(() {
                                  _selectedDuration = value as String;
                                });
                              },
                              decoration:
                                  const InputDecoration(fillColor: Colors.grey),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            height: h * 0.06,
                            width: w * 0.55,
                            color: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Amount:',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 13),
                                ),
                                SizedBox(
                                  height: h * 0.04,
                                  width: w * 0.25,
                                  child: TextField(
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                      keyboardType: TextInputType.number,
                                      cursorColor: Colors.grey,
                                      cursorHeight: h * 0.035,
                                      decoration: InputDecoration(
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.never,
                                          labelText: 'Enter Amount',
                                          labelStyle: GoogleFonts.poppins(
                                              color: AppColors.fillText,
                                              fontSize: 12),
                                          border: InputBorder.none)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: h * 0.02),
                          Stack(children: [
                            Image.asset(plans[index]['button']),
                            Positioned(
                              top: h * 0.01,
                              left: w * 0.1,
                              child: Text(
                                'PROCEED',
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 16),
                              ),
                            )
                          ])
                        ],
                      ))
                ]),
              ),
            );
          }),
    );
  }
}
