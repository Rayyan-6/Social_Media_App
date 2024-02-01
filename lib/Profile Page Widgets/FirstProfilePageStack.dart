import 'package:awesome_project/Profile%20Page%20Widgets/ProfilePicRow.dart';
import 'package:flutter/material.dart';
import 'ProfileBackAndMoreOptions.dart';
import 'ProfileDescContainer.dart';

class FirstProfilePageStack extends StatefulWidget {
  const FirstProfilePageStack({super.key});

  @override
  State<FirstProfilePageStack> createState() => _FirstProfilePageStackState();
}

class _FirstProfilePageStackState extends State<FirstProfilePageStack> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Column(
          children: [
            Container(
                height: 240,
                width: screenWidth,
                child:
                Image(image: AssetImage('assets/flowersbg.jpg'),
                  fit: BoxFit.fill,
                ),
            ),
            SizedBox(height: 60,),
            ProfileDescContainer(),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            //options and back arrow
            ProfileBackAndMoreOptions(),
            SizedBox(height: 135,),
            //profile pic with other options row
            ProfilePicRow(),
          ],
        )
      ],
    );
  }
}
