import 'package:awesome_project/LanguagesPage.dart';
import 'package:awesome_project/Profile%20Page%20Widgets/Pop%20Up%20Menu/MorePage.dart';
import 'package:awesome_project/Profile%20Page%20Widgets/ProfilePageDropdownItem.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../ThemeProvider.dart';
import 'Pop Up Menu/EditProfile.dart';

class ProfileBackAndMoreOptions extends StatefulWidget {
  const ProfileBackAndMoreOptions({super.key});

  @override
  State<ProfileBackAndMoreOptions> createState() => _ProfileBackAndMoreOptionsState();
}


class _ProfileBackAndMoreOptionsState extends State<ProfileBackAndMoreOptions> {
  String selectedOption = 'Option 1'; // Initially selected option

  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;
    return Container(
      height: 25,
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.white,size: 30,),
            ),
             PopupMenuButton<String>(
                onSelected: (String value) {
                  setState(() {
                    selectedOption = value;


                    if (value == 'option 1') {
                      // Navigate to the dark mode page
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => DarkModePage()),
                      // );

                      Provider.of<ThemeProvider>(context, listen: false).toggleTheme();


                    } else if (value == 'option 2') {
                      // Navigate to the language page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LanguagesPage()),
                      );
                    } else if (value == 'option 3') {
                      // Navigate to the more settings page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MorePage()),
                      );
                    }
                    else if (value == 'option 5') {
                      // Navigate to the more settings page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditProfile()),
                      );
                    }


                  });
                },
                icon: Container(
                    height: 40,
                    width: 40,
                    child:
                        Center(child: Icon(Icons.more_horiz, color: Colors.white,size: 35,)),
                    ),
                offset: Offset(0, 20), // Adjust the menu's position
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[


                  PopupMenuItem<String>(
                   child: ProfilePageDropdownItem(text: brightness==Brightness.light? 'Switch to dark mode':'Switch to light mode' , value: 'option 1',
                     icon: brightness==Brightness.light? Icons.shield_moon_rounded: Icons.sunny
                     ,),
                  ),

                  PopupMenuItem<String>(
                    child: ProfilePageDropdownItem(text: 'Language', value: 'option 2', icon: Icons.translate,),
                  ),
                  PopupMenuItem<String>(
                      child: ProfilePageDropdownItem(text: 'More', value: 'option 3', icon: Icons.settings,),
                    ),

                  PopupMenuItem<String>(
                    child: ProfilePageDropdownItem(text: 'Log out', value: 'option 4', icon: Icons.logout,),
                  ),
                  PopupMenuItem<String>(
                      child: ProfilePageDropdownItem(text: 'Edit Profile', value: 'option 5', icon: Icons.edit,)
                  ),
                ],
              ),

          ],
        ),
      ),
    );
  }
}





