import 'package:awesome_project/Profile%20Page%20Widgets/Pop%20Up%20Menu/MoreTiles.dart';
import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('More',style: TextStyle(fontSize: 25),),
      ),
      body: Column(
        children: [
          SizedBox(height: 15,),
          // Container(
          //   height: 40,
          //
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          //         child: Column(
          //           children: [
          //             GestureDetector(
          //                 onTap: (){
          //                   Navigator.pop(context);
          //                 },
          //                 child: Icon(Icons.arrow_back, size: 25,)),
          //           ],
          //         ),
          //       ),
          //       Column(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //           Row(
          //             children: [
          //               Text('More', style: TextStyle(color: Colors.black, fontSize: 25),),
          //             ],
          //           ),
          //         ],
          //       ),
          //       Column(
          //         children: [
          //           SizedBox(width: 8,)
          //         ],
          //       ),
          //     ],
          //   ),
          // ),

          Divider(),


          Expanded(
              child: ListView(
                children: [
                  MoreTiles(title: 'Analytics', icon: Icons.chat_outlined),
                  MoreTiles(title: 'Content Management', icon: Icons.chat_outlined),
                  MoreTiles(title: 'Living Stream Management', icon: Icons.chat_outlined),
                  MoreTiles(title: 'Post Management', icon: Icons.chat_outlined),
                  MoreTiles(title: 'Chat', icon: Icons.chat_outlined),
                  MoreTiles(title: 'Content Type', icon: Icons.chat_outlined),
                  MoreTiles(title: 'Transaction History', icon: Icons.chat_outlined),
                  MoreTiles(title: 'Subscription price', icon: Icons.chat_outlined),
                  MoreTiles(title: 'Support', icon: Icons.chat_outlined),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
