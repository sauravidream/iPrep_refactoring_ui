// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:library_package/presentation/core/utils/color/color_constants.dart';
// import 'package:library_package/presentation/core/utils/imageUrl/image_constants.dart';
// import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
// import 'package:library_package/presentation/core/widget/text_widget/text_widget.dart';

// class ListViewWidgetBoard extends StatelessWidget {
//   ListViewWidgetBoard({super.key});

//   final List list = [
//     "CBSE",
//     "ICSE",
//     "State Board",
//     "International Board",
//     "Other",
//   ].reversed.toList();

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       physics: const BouncingScrollPhysics(),
//       itemCount: list.length,
//       reverse: true,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.only(top: 16),
//           child: Container(
//             height: 70,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               border: Border.all(
//                 color: kTextFieldBorderColor,
//               ),
//             ),
//             child: Row(
//               children: [
//                 kappWidth20,
//                 CircleAvatar(
//                   radius: 17,
//                   child: SvgPicture.asset(kGooglelogo),
//                 ),
//                 kappWidth20,
//                 TextWidget(
//                   data: list[index],
//                   fontSize: 14,
//                   color: kPrimaryDarkTextColor,
//                   inputValue: 4,
//                 ),
//                 const Spacer(),
//                 kappWidth20,
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
