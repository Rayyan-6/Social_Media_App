import 'package:flutter/material.dart';

class FollowersTile extends StatefulWidget {
  const FollowersTile({super.key});

  @override
  State<FollowersTile> createState() => _FollowersTileState();
}
class _FollowersTileState extends State<FollowersTile> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Dismissible(
        key: Key('your_unique_key'), // Provide a unique key for each item
        onDismissed: (direction) {
          // Handle the item dismissal here (e.g., remove it from the list)
        },
        background: Container(
          color: Colors.red, // You can customize the background color
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          ),
        ),
        child: Container(
          width: screenWidth,
          height: 70.5,
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    //two columns for profile pic circle and details
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: ClipOval(
                            child: Image(
                              image: AssetImage('assets/twitterIcon.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //two rows for name and desc
                      children: [
                        Row(
                          children: [
                            Text('James Courtney',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('@james.gaming',style: TextStyle(fontSize: 12),),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Expanded(
                child: Container(
                  // width: 100.0,
                  height: 1.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );
  }
}
