import 'package:bulloak_fin_mgt_fin_mgt/screens/history_nav/history/history_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../screens/investment/inv_packages.dart';
import '../screens/transactions/deposit.dart';
import '../screens/transactions/transactionhistory.dart';
import '../screens/transactions/withdraw.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
    required this.w,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                color: Colors.grey.shade800,
                thickness: 1,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Iconsax.home),
                title: Text('Dashboard', style: GoogleFonts.poppins()),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => const Deposit());
                },
                leading: const Icon(Iconsax.chart_2),
                title: Text('Deposit', style: GoogleFonts.poppins()),
              ),
              ListTile(
                onTap: () {
                  Get.to(const Withdraw());
                },
                leading: const Icon(Iconsax.profile_2user),
                title: Text('Withdraw', style: GoogleFonts.poppins()),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Iconsax.transaction_minus4),
                title: Text('Transfer', style: GoogleFonts.poppins()),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.credit_card_rounded),
                title: Text('Card Application', style: GoogleFonts.poppins()),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => const HistoryNav());
                },
                leading: const Icon(Iconsax.refresh),
                title: Text('History', style: GoogleFonts.poppins()),
              ),
              ///////Expansion tile
              ExpansionTile(
                title: Text(
                  'Investment',
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
                leading: const Icon(
                  Iconsax.bank4,
                  color: Colors.white,
                ),
                collapsedIconColor: Colors.grey.shade700,
                children: [
                  //drop-downs
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.1),
                    child: ListTile(
                      onTap: () {
                        Get.to(() => const InvestmentPackages());
                      },
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -4),
                      title: Text('Investment Packages',
                          style: GoogleFonts.poppins()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.1),
                    child: ListTile(
                      onTap: () {},
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -4),
                      title: Text('Running Investment',
                          style: GoogleFonts.poppins()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.1),
                    child: ListTile(
                      onTap: () {},
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -4),
                      title:
                          Text('Expected Profit', style: GoogleFonts.poppins()),
                    ),
                  ),
                ],
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.person_outlined),
                title: Text('My Profile', style: GoogleFonts.poppins()),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.people_outline),
                title: Text('Referrals', style: GoogleFonts.poppins()),
              ),
              Divider(color: Colors.grey.shade800),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.logout_outlined),
                title: Text('Log Out', style: GoogleFonts.poppins()),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Iconsax.support),
                title: Text('Support', style: GoogleFonts.poppins()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
