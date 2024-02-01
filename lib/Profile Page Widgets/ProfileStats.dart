import 'package:awesome_project/FollowersPage.dart';
import 'package:awesome_project/Profile%20Page%20Widgets/StatsColumn.dart';
import 'package:flutter/material.dart';

import '../SubscribersPage.dart';

class ProfileStats extends StatefulWidget {
  const ProfileStats({super.key});

  @override
  State<ProfileStats> createState() => _ProfileStatsState();
}

class _ProfileStatsState extends State<ProfileStats> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Brightness brightness = Theme.of(context).brightness;

    return Container(
      decoration: BoxDecoration(
        color:
            brightness == Brightness.light ? Colors.white :
            Color(0xFF240b61),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 2.0),
            blurRadius: 4.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      height: 60,
      width: screenWidth,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //ROWS' children are four columns
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SubscribersPage()),
                  );
                },
                child: StatsColumn(number: '123.2K', type: 'Subscribers')),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FollowersPage()),
                  );
                },
                child: StatsColumn(number: '32', type: 'Followers')),
            StatsColumn(number: '489', type: 'Images'),
            StatsColumn(number: '19.2K', type: 'Videos'),
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////

//
// class ProfileStats extends StatefulWidget {
//   const ProfileStats({super.key});
//
//   @override
//   State<ProfileStats> createState() => _ProfileStatsState();
// }
//
// class _ProfileStatsState extends State<ProfileStats> {
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//
//     return Theme(
//       data: ThemeData(
//         // Define your light theme here
//         brightness: Brightness.light,
//         primaryColor: Colors.blue, // Customize as needed
//         hintColor: Colors.orange, // Customize as needed
//         scaffoldBackgroundColor: Colors.white, // Customize as needed
//         textTheme: TextTheme(
//           bodyText1: TextStyle(color: Colors.black), // Customize as needed
//         ),
//       ),
//       darkTheme: ThemeData(
//         // Define your dark theme here
//         brightness: Brightness.dark,
//         primaryColor: Colors.indigo, // Customize as needed
//         hintColor: Colors.amber, // Customize as needed
//         scaffoldBackgroundColor: Colors.black, // Customize as needed
//         textTheme: TextTheme(
//           bodyText1: TextStyle(color: Colors.white), // Customize as needed
//         ),
//       ),
//       builder: (context, theme) {
//         return Container(
//           decoration: BoxDecoration(
//             color: theme.scaffoldBackgroundColor,
//             borderRadius: BorderRadius.circular(10.0),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey,
//                 offset: Offset(0.0, 2.0),
//                 blurRadius: 4.0,
//                 spreadRadius: 1.0,
//               ),
//             ],
//           ),
//           height: 60,
//           width: screenWidth,
//           child: Padding(
//             padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //ROWS' children are four columns
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const SubscribersPage(),
//                       ),
//                     );
//                   },
//                   child: StatsColumn(number: '123.2K', type: 'Subscribers'),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const FollowersPage(),
//                       ),
//                     );
//                   },
//                   child: StatsColumn(number: '32', type: 'Followers'),
//                 ),
//                 StatsColumn(number: '489', type: 'Images'),
//                 StatsColumn(number: '19.2K', type: 'Videos'),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
