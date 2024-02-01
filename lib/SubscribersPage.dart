import 'package:awesome_project/Home%20Page%20Widgets/SubscribersTile.dart';
import 'package:flutter/material.dart';

import 'Home Page Widgets/SubscribersTile2.dart';

class SubscribersPage extends StatefulWidget {
  const SubscribersPage({super.key});

  @override
  State<SubscribersPage> createState() => _SubscribersPageState();
}

class _SubscribersPageState extends State<SubscribersPage> {
  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color:  brightness==Brightness.light? Colors.black: Colors.white
        ),
        // backgroundColor: Color(0xFFe7bfef),
        backgroundColor:Colors.transparent,
        centerTitle: true,
        title: Text('Subscribers',style: TextStyle(color: brightness==Brightness.light? Colors.black: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SubscribersTile(list: ['John Doe',]),
            SubscribersTile(list: ['John Doe','Sample Name', 'New User']),
            SubscribersTile(list: ['John Doe','Sample Name', 'New User']),
            SubscribersTile(list: ['John Doe','Sample Name', 'New User']),
            SubscribersTile(list: ['John Doe','Sample Name', 'New User']),
            SubscribersTile(list: ['John Doe','Sample Name', 'New User']),
            SubscribersTile(list: ['John Doe','Sample Name', 'New User']),
            SubscribersTile(list: ['John Doe','Sample Name', 'New User']),
            SubscribersTile(list: ['John Doe','Sample Name', 'New User']),
            SubscribersTile(list: ['John Doe','Sample Name', 'New User']),
            SubscribersTile(list: ['John Doe','Sample Name', 'New User']),
            SubscribersTile(list: ['John Doe','Sample Name', 'New User']),
            SubscribersTile(list: ['John Doe','Sample Name', 'New User']),
            SubscribersTile(list: ['John Doe','Sample Name', 'New User']),
            // SubscribersTile2(list: ['John Doe','Sample Name', 'New User'], id: 'First',),
            // SubscribersTile(),
            // SubscribersTile(),
            // SubscribersTile(),
            // SubscribersTile(),
            // SubscribersTile(),
            // SubscribersTile(),
            // SubscribersTile(),
            // SubscribersTile(),
            // SubscribersTile(),
            // SubscribersTile(),
            // SubscribersTile(),
        ],),
      ),
    );
  }
}
