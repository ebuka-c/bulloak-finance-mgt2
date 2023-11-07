import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/portfolio_drawer.dart';
import '../../colors.dart';
import '../../data/inv_options.dart';
import '../../widgets/custom_button.dart';
import '../transactions/deposit.dart';
import '../transactions/withdraw.dart';

void main() {
  runApp(const MaterialApp(
    home: DashBoard(),
    debugShowCheckedModeBanner: false,
  ));
}

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<DashBoard> {
  @override
  void initState() {
    super.initState();
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Color> colors = <Color>[
    AppColors.secondaryColor,
    const Color(0xffFF03A9).withOpacity(0.5),
  ];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    //deposit and withdrawal buttons decoration
    final kInnerDecoration = BoxDecoration(
      color: const Color(0xffFCEAFB),
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
    );

    final kGradientBoxDecoration = BoxDecoration(
      gradient: const LinearGradient(
        colors: [AppColors.goldColor, AppColors.secondaryColor],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      border: Border.all(color: const Color(0xffFCEAFB), width: 0.05),
      borderRadius: BorderRadius.circular(10),
    );

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.06),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: h * 0.05),
                    height: h * 0.23,
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: w * 0.06, vertical: h * 0.02),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                //row 1
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'My Portfolio',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: w * 0.04,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Container(
                                      height: w * 0.1,
                                      width: w * 0.09,
                                      decoration: BoxDecoration(
                                        color: AppColors.secondaryColor,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                        child: IconButton(
                                            color: Colors.black,
                                            onPressed: () {},
                                            icon: const Icon(Icons.more_vert)),
                                      ),
                                    )
                                  ],
                                ),
                                //row2
                                SizedBox(
                                  height: h * 0.015,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\$',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white, fontSize: 22),
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      '47,300.00',
                                      style: GoogleFonts.poppins(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                //row3
                                SizedBox(
                                  height: h * 0.02,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '\$',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    const SizedBox(
                                      width: 1,
                                    ),
                                    Text(
                                      '2,535.40',
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.03,
                                    ),
                                    Text(
                                      '5.7%',
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: h * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Statistics',
                          style: GoogleFonts.poppins(
                              color: AppColors.primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Details >',
                          style: GoogleFonts.poppins(
                              color: AppColors.primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                      height: h * 0.2,
                      child: const Row(
                        children: [
                          // Expanded(flex: 3, child: CategoriesColumn()),
                          // Expanded(flex: 4, child: ChartView()),
                        ],
                      )),
                  SizedBox(height: h * 0.035), //boxes
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () => Get.to(const Deposit()),
                        child: Container(
                          height: h * 0.06,
                          width: w * 0.35,
                          decoration: kGradientBoxDecoration,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              decoration: kInnerDecoration,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: w * 0.03),
                                    child: Text("Deposit",
                                        style: GoogleFonts.poppins(
                                            fontSize: w * 0.04,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Image.asset('assets/icons/deposit.png')
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.to(const Withdraw()),
                        child: Container(
                          height: h * 0.06,
                          width: w * 0.35,
                          decoration: kGradientBoxDecoration,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              decoration: kInnerDecoration,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: w * 0.03),
                                    child: Text(
                                      "Withdraw",
                                      style: GoogleFonts.poppins(
                                          fontSize: w * 0.04,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  SizedBox(height: w * 0.1),
                                  Image.asset('assets/icons/withdrawal.png')
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Investments',
                          style: GoogleFonts.poppins(
                              color: AppColors.primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Crypto',
                          style: GoogleFonts.poppins(
                              color: AppColors.primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.5,
                    child: ListView.builder(
                        padding: EdgeInsets.only(top: h * 0.0001),
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: investments.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            height: h * 0.08,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  investments[index]['invName'],
                                  style:
                                      GoogleFonts.poppins(fontSize: w * 0.04),
                                ),
                                //row with texts and a container
                                Row(
                                  children: [
                                    //column of texts
                                    Padding(
                                      padding: EdgeInsets.only(top: h * 0.02),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text('72535.40 USD',
                                              style: GoogleFonts.poppins()),
                                          Text('\$ 504.80',
                                              style: GoogleFonts.poppins())
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: h * 0.03, left: w * 0.06),
                                      height: h * 0.07,
                                      width: h * 0.07,
                                      decoration: BoxDecoration(
                                          color: AppColors.secondaryColor,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                          child: Text(
                                        '+7.3%',
                                        style: GoogleFonts.poppins(
                                            color: Colors.white),
                                      )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CustomButton(
                      height: h * 0.07,
                      width: w * 0.8,
                      color: AppColors.primaryColor,
                      icon: const Icon(
                        Icons.add,
                        weight: 70,
                        color: AppColors.primaryColor,
                      ),
                      text: '  Add Investment',
                      circularRadius: 10,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x54000000),
                          offset: Offset(0, 4),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        // bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
