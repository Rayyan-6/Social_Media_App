import 'package:awesome_project/Profile%20Page%20Widgets/Pop%20Up%20Menu/SubscriptionPrice.dart';
import 'package:awesome_project/Profile%20Page%20Widgets/Pop%20Up%20Menu/SupportPage.dart';
import 'package:awesome_project/Profile%20Page%20Widgets/Pop%20Up%20Menu/TransactionHistoryPage.dart';
import 'package:flutter/material.dart';

import 'AnalyticsPage.dart';
import 'EditProfile.dart';

class MoreTiles extends StatefulWidget {
  final String title;
  final IconData icon;
  const MoreTiles({super.key, required this.title, required this.icon});

  @override
  State<MoreTiles> createState() => _MoreTilesState();
}

class _MoreTilesState extends State<MoreTiles> {
  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;

    return ListTile(
        // tileColor: Colors.white,
        tileColor: brightness==Brightness.light ? Colors.white: Color(0xFF453176),
        title: Text(widget.title,style: TextStyle(fontSize: 20),),
        leading: Icon(widget.icon, color: Colors.pinkAccent.shade400,size: 30,),
        onTap:
            () {
          if(widget.title=='Analytics'){
          Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AnalyticsPage()),
                  );
          }
          else if(widget.title=='Support'){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SupportPage()),
            );
          }
          else if(widget.title=='Subscription price'){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SubscriptionPrice()),
            );
          }else if(widget.title=='Transaction History'){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TransactionHistory()),
            );
          }else if(widget.title=='Edit Profile'){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditProfile()),
            );
          }
        },
        trailing: Icon(Icons.navigate_next,size: 30,),
    );
  }
}
