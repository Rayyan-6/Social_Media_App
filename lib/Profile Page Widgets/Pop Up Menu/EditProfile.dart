import 'package:awesome_project/Profile%20Page%20Widgets/Pop%20Up%20Menu/EditProfileField.dart';
import 'package:awesome_project/Profile%20Page%20Widgets/Pop%20Up%20Menu/editProfileStack.dart';
import 'package:flutter/material.dart';

import '../FirstProfilePageStack.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController pronounController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController linkController = TextEditingController();
  final TextEditingController genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            editProfileStack(),

            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  children: [
                    EditProfileField(title: 'Name', hintText: 'Lucinda Live', hintColor: Colors.black, controller: nameController),
                    EditProfileField(title: 'Username', hintText: '@Lucindalive', hintColor: Colors.black, controller: userNameController),
                    EditProfileField(title: 'Pronouns', hintText: 'Pronouns', hintColor: Colors.grey, controller: pronounController),
                    EditProfileField(title: 'Bio', hintText: 'Gamers Gonna Game', hintColor: Colors.black, controller: bioController),
                    EditProfileField(title: 'Links', hintText: 'Add Links', hintColor: Colors.grey, controller: linkController),
                    EditProfileField(title: 'Gender', hintText: 'Gender', hintColor: Colors.grey, controller: genderController),

                    Divider(),

                    Row(
                      children: [
                        Text('Switch to another account',style: TextStyle(fontSize: 18,color: Colors.pinkAccent.shade100,fontWeight: FontWeight.bold),)
                      ],
                    ),

                    Divider(),

                    Row(
                      children: [
                        Text('Personal information settings',style: TextStyle(fontSize: 18,color: Colors.pinkAccent.shade100,fontWeight: FontWeight.bold),)
                      ],
                    ),

                    SizedBox(height: 15,),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
