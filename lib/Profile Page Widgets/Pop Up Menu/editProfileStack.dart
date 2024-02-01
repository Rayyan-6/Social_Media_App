import 'package:flutter/material.dart';

import '../ProfilePicRow.dart';

class editProfileStack extends StatefulWidget {
  const editProfileStack({super.key});

  @override
  State<editProfileStack> createState() => _editProfileStackState();
}

class _editProfileStackState extends State<editProfileStack> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children:[ Container(
                    height: 240,
                    width: screenWidth,
                    child:
                    Image(image: AssetImage('assets/flowersbg.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                    Container(
                      height: 240,
                      width: screenWidth,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6), // Adjust opacity as needed
                        ),
                    ),
                  ]
                ),
                SizedBox(height: 50,),
                // ProfileDescContainer(),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Edit Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                      Icon(Icons.check,color: Colors.white,size: 30,)
                    ],
                  ),
                ),
                SizedBox(height: 45 ,),
                // ProfileBackAndMoreOptions(),
                // for change cover option
                Container(
                  width: (MediaQuery.of(context).size.width)/2.0,
                  height: 35,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2.0),
                    color: Colors.transparent
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera_alt, color: Colors.white,size: 18,),
                      Text('Change cover photo',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                /////////////////////////////////////////////
                SizedBox(height: 30,),
                //profile pic
                // ProfilePicRow(),

                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('assets/flowerpost.jpg'),
                      ),
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ],
    );
  }
}
