import 'package:awesome_project/Home%20Page%20Widgets/NotificationsTile.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  String readText = 'Mark all as read';
  // Color bgColor = Colors.pinkAccent.shade100;
  Color bgColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Notifications',style: TextStyle(fontSize: 25),),
      ),
      body: Column(
        children: [
          Divider(),
          Expanded(
          child:
                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index){
                      return NotificationsTile(title: 'James Courtney liked your photo', subtitle:'13h ago', imgurl: 'assets/twitterIcon.jpg', );
                    }
            ),
          ),
        ],
      ),
    );
  }
}
