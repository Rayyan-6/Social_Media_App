import 'package:flutter/material.dart';

class SubscribersTile extends StatefulWidget {
   final List<String> list ;
   const SubscribersTile({super.key, required this.list});

  @override
  State<SubscribersTile> createState() => _SubscribersTileState();
}

class _SubscribersTileState extends State<SubscribersTile> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Dismissible(
        key: Key('your_unique_key'),
        onDismissed: (direction) {

        },
        background: Container(
          color: Colors.red,
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


//   showConfirmationDialog() {}

}
