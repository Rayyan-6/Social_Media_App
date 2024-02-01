import 'package:awesome_project/Home%20Page%20Widgets/FollowersTile.dart';
import 'package:flutter/material.dart';

class FollowersPage extends StatefulWidget {
  const FollowersPage({super.key});

  @override
  State<FollowersPage> createState() => _FollowersPageState();
}

class _FollowersPageState extends State<FollowersPage> {
  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color:  brightness==Brightness.light? Colors.black: Colors.white
        ),
        // backgroundColor: Color(0xFFe7bfef),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Followers',style: TextStyle(color: brightness==Brightness.light? Colors.black: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FollowersTile(),
            FollowersTile(),
            FollowersTile(),
            FollowersTile(),
            FollowersTile(),
            FollowersTile(),
            FollowersTile(),
            FollowersTile(),
            FollowersTile(),
            FollowersTile(),
            FollowersTile(),
            FollowersTile(),
          ],),
      ),
    );
  }
}
