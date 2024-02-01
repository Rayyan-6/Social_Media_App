import 'package:flutter/material.dart';

class ProfilePicRow extends StatefulWidget {
  const ProfilePicRow({super.key});

  @override
  State<ProfilePicRow> createState() => _ProfilePicRowState();
}

class _ProfilePicRowState extends State<ProfilePicRow> {

  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;

    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/homepagestory.png'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFFc78ce8),
                radius: 20,
                child: Icon(Icons.message,size: 15,color: brightness==Brightness.light?Colors.black:Colors.white,),
              ),
              SizedBox(width: 10,),
              CircleAvatar(
                backgroundColor: Color(0xFFc78ce8),
                radius: 20,
                child: Icon(Icons.share,size: 15,color: brightness==Brightness.light?Colors.black:Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
