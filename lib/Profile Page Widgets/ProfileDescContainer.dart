import 'package:awesome_project/ButtonContainer.dart';
import 'package:awesome_project/Profile%20Page%20Widgets/ProfileStats.dart';
import 'package:flutter/material.dart';

class ProfileDescContainer extends StatefulWidget {
  const ProfileDescContainer({super.key});

  @override
  State<ProfileDescContainer> createState() => _ProfileDescContainerState();
}

class _ProfileDescContainerState extends State<ProfileDescContainer> {
  bool followStatus= false;
  bool subscribeStatus= false;
  String followText = '';
  String subsText= '';



  @override
  Widget build(BuildContext context) {

    if(followStatus){
      setState(() {
        followText='Following';
      });
    }
    else{
      setState(() {
        followText='Follow';
      });
    }

    if(subscribeStatus){
      setState(() {
        subsText='Subscribed';
      });
    }
    else{
      setState(() {
        subsText='Subscribe';
      });
    }


    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(13, 0, 13, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //for profile name and report user
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Profile Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Row(
                //for Report user and warning icon
                children: [
                  Icon(
                    Icons.warning,
                    color: Colors.red,
                    size: 15,
                  ),
                  Text(
                    ' Report User',
                    style: TextStyle(color: Colors.red,fontSize: 14),
                  ),
                ],
              ),
            ],
          ),

          Row(
            //for user name and seen time
            children: [
              Text('@lucinda.gaming | Seen 10 mins ago',style: TextStyle(fontSize: 14),),
            ],
          ),
          Row(
            // for profile desc.
            children: [
              Text('Australia\'s best gamer | Call of Duty | Fortnite',style: TextStyle(fontSize: 14)),

            ],
          ),
          SizedBox(height: 15,),
          //for profile stats
          ProfileStats(),
          SizedBox(height: 15,),

          //for following and subscribe buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonContainer(width: screenWidth / 2.5, title: followText ,onPressed: (){
                setState(() {
                  // followText= 'Followed';
                  followStatus=!followStatus;
                });


              },),
              SizedBox(
                width: 5,
              ),
              ButtonContainer(width: screenWidth / 2.5, title: subsText,onPressed: (){
                setState(() {
                  // subsText='Subscribed';
                  subscribeStatus=!subscribeStatus;
                });
              },),
            ],
          )
        ],
      ),
    );
  }
}
