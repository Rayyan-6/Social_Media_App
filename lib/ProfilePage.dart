import 'package:awesome_project/Home%20Page%20Widgets/BtmNavBar.dart';
import 'package:flutter/material.dart';

import 'Profile Page Widgets/FirstProfilePageStack.dart';
import 'Profile Page Widgets/ProfilePagePosts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //upper half part
            FirstProfilePageStack(),
            SizedBox(height: 20,),
            //lower half part
            ProfilePagePosts(),
        
          ],
        ),
      ),
      bottomNavigationBar: BtmNavBar(),
    );
  }
}
