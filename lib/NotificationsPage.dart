import 'package:awesome_project/Home%20Page%20Widgets/NotificationsTile.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

// class _NotificationsPageState extends State<NotificationsPage> {
//   String readText = 'Mark all as read';
//   Color bgColor = Colors.pinkAccent.shade100;
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           SizedBox(height: 15,),
//           Container(
//             height: 40,
//             width: screenWidth,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //row for appbar
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
//                   child: Column(
//                     children: [
//                       Icon(Icons.arrow_back,size: 20,),
//                     ],
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Row(
//                       children: [
//                         Text('Notifications',style: TextStyle(color: Colors.black,fontSize: 18),),
//                         SizedBox(width: 15,),
//                         GestureDetector(
//                             onTap: (){
//                               setState(() {
//                                 readText='';
//                               });
//                             },
//                             child: Text(readText,style: TextStyle(color: Colors.grey,fontSize: 12),)),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 Column(
//                   children: [
//                     SizedBox(width: 5,)
//
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Divider(),
//           Expanded(
//           child:
//                 ListView.builder(
//                     itemCount: 10,
//                     itemBuilder: (BuildContext context, int index){
//                       return NotificationsTile(title: 'James Courtney liked your photo', subtitle:'13h ago', imgurl: 'assets/twitterIcon.jpg', bgColor: bgColor,);
//                     }
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




//////////////////////////////////////

// class _NotificationsPageState extends State<NotificationsPage> {
//   String readText = 'Mark all as read';
//   Color bgColor = Colors.pinkAccent.shade100;
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       // backgroundColor: Colors.white,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//
//         children: [
//           SizedBox(height: 15,),
//           Container(
//             height: 40,
//             width: screenWidth,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
//                   child: Column(
//                     children: [
//                       GestureDetector(
//                           onTap: (){
//                             Navigator.pop(context);
//                           },
//                           child: Icon(Icons.arrow_back, size: 20,)),
//                     ],
//                   ),
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//
//                   children: [
//                     Row(
//                       children: [
//                         Text('Notifications', style: TextStyle(color: Colors.black, fontSize: 18),),
//                         SizedBox(width: 15,),
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               readText = '';
//                             });
//                           },
//                           child: Text(readText, style: TextStyle(color: Colors.grey, fontSize: 12),),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     SizedBox(width: 5,)
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Divider(),
//           Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: 8,
//                     itemBuilder: (BuildContext context, int index) {
//                       return  NotificationsTile(
//                           title: 'James Courtney liked your photo',
//                           subtitle: '13h ago',
//                           imgurl: 'assets/twitterIcon.jpg',
//                           // onpr: () {
//                           //
//                           // },
//                       );
//                     },
//                   ),
//                 ),
//                 Container(
//                   child: Row(
//                     children: [
//                       Text('Yesterday')
//                     ],
//                   ),
//                 ),
//
//
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: 10,
//                     itemBuilder: (BuildContext context, int index) {
//                       return  NotificationsTile(
//                         title: 'James Courtney liked your photo',
//                         subtitle: '13h ago',
//                         imgurl: 'assets/twitterIcon.jpg',
//                         // onpr: () {
//                         //
//                         // },
//                       );
//                     },
//                   ),
//                 ),
//
//
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



/////////////////////////////////////////////////////////////////////////
class _NotificationsPageState extends State<NotificationsPage> {
  String readText = 'Mark all as read';
  Color bgColor = Colors.pinkAccent.shade100;

  final List<Map<String, String>> notificationsData = [
    {
      'title': 'James Courtney liked your photo',
      'subtitle': '13h ago',
      'imgurl': 'assets/twitterIcon.jpg',
    },
    {
      'title': 'James Courtney and 12 others liked your photo',
      'subtitle': '13h ago',
      'imgurl': 'assets/twitterIcon.jpg',
    },
    {
      'title': 'James Courtney followed you',
      'subtitle': '13h ago',
      'imgurl': 'assets/twitterIcon.jpg',
    },
  ];


  final List<Map<String, String>> notificationsDataYesterday = [
    {
      'title': 'James Courtney purchased your all gaming setup',
      'subtitle': '13h ago',
      'imgurl': 'assets/twitterIcon.jpg',
    },
    {
      'title': 'James Courtney subscribed you',
      'subtitle': '13h ago',
      'imgurl': 'assets/twitterIcon.jpg',
    },
    {
      'title': 'James Courtney followed you',
      'subtitle': '13h ago',
      'imgurl': 'assets/twitterIcon.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 15,),
          Container(
            height: 40,
            width: screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back, size: 25,)),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Notifications', style: TextStyle(color: Colors.black, fontSize: 18),),
                        SizedBox(width: 15,),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              readText = '';
                            });
                          },
                          child: Text(readText, style: TextStyle(color: Colors.grey, fontSize: 12),),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(width: 5,)
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    for (int i = 0; i < notificationsData.length; i++)
                      NotificationsTile(
                        title: notificationsData[i]['title'] ?? '',
                        subtitle: notificationsData[i]['subtitle'] ?? '',
                        imgurl: notificationsData[i]['imgurl'] ?? '',
                      ),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text('Yesterday'),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    for (int i = 0; i < 10; i++)
                      NotificationsTile(
                        title: 'James Courtney liked your photo',
                        subtitle: '13h ago',
                        imgurl: 'assets/twitterIcon.jpg',
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




