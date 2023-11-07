// import 'package:bulloak_fin_mgt/widgets/pie_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class CategoriesColumn extends StatelessWidget {
//   const CategoriesColumn({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         flex: 3,
//         child: Column(
//           children: <Widget>[
//             for (var categ in categories)
//               StatCategory(text: categ.name, index: categories.indexOf(categ))
//           ],
//         ));
//   }
// }

// class StatCategory extends StatelessWidget {
//   const StatCategory({
//     super.key,
//     required this.index,
//     required this.text,
//   });

//   final int index;
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//             width: 7,
//             height: 7,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color:
//                   kNeumorphicColors.elementAt(index % kNeumorphicColors.length),
//             )),
//         const SizedBox(
//           width: 20,
//         ),
//         Text(
//           text.capitalize(),
//           style: GoogleFonts.poppins(fontSize: 15),
//         )
//       ],
//     );
//   }
// }

// extension StringExtension on String {
//   String capitalize() {
//     return '${this[0].toUpperCase()}${substring(1)}';
//   }
// }
