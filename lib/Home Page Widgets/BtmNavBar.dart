import 'package:flutter/material.dart';

class BtmNavBar extends StatefulWidget {
  const BtmNavBar({super.key});

  @override
  State<BtmNavBar> createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFe7bfef), Color(0xFFc78ce8)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60,
            width: 60,
            child:Image.asset('assets/homeicon.png',height: 70,width: 70,) ,
          ),
          Container(
            height: 60,
            width: 60,
            child:Image.asset('assets/searchicon.png',height: 70,width: 70,) ,
          ),Container(
            height: 60,
            width: 60,
            child:Image.asset('assets/hearticon2.png',height: 70,width: 70,) ,
          ),Container(
            height: 60,
            width: 60,
            child:Image.asset('assets/msgicon2.png',height: 70,width: 70,) ,
          ),
          // IconButton(
          //   // icon: Icon(Icons.message, color: Colors.white),
          //   icon: Image.asset('assets/msgicon2.png',height: 40,width: 40,),
          //   onPressed: () {
          //
          //   },
          // ),
        ],
      ),
    );
  }
}
