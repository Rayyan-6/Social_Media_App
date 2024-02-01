import 'package:flutter/material.dart';

class StoryView extends StatefulWidget {
  final String storyImgUrl;
  final String profileImgUrl;

  const StoryView({super.key, required this.storyImgUrl, required this.profileImgUrl});

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeight,
            width: screenWidth,
            // for story pic in bg
            child: Image(
              image: AssetImage(widget.storyImgUrl),
              fit: BoxFit.fill,
            ),

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 30, 15, 0),
                child: Row(
                  //first row for profile pic and cross icon
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(widget.profileImgUrl),
                        ),
                        SizedBox(width: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Julian Kramer',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                            Text('4:15 PM',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Icon(Icons.cancel,color: Colors.white,)),
                      ],
                    )

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Container(
                  height: 60,
                  width: screenWidth/1.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    color:brightness==Brightness.light? Colors.white:Color(0xFF240b61),
                  ),

                  //for send a message
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(widget.profileImgUrl),

                            ),
                            SizedBox(width: 5,),

                            Container(
                              height: 90,
                              width: screenWidth/1.8,
                              child: TextFormField(
                                controller: messageController,
                                decoration: InputDecoration(
                                  // contentPadding: EdgeInsets.symmetric(vertical: 10.0),

                                  hintText: 'Send a message',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: brightness==Brightness.light? Colors.white:Color(0xFF453176)),
                                  ),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: brightness==Brightness.light? Colors.white :
                                    // Color(0xFF453176)
                                    Colors.transparent

                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: brightness==Brightness.light? Colors.white:
                                    // Color(0xFF453176)
                                    Colors.transparent

                                    ),
                                  ),

                                  hintStyle: TextStyle(color: brightness==Brightness.light?Colors.grey:Colors.white,fontSize: 14),
                                ),
                                // style: TextStyle(color: Colors.blue),
                              ),
                            ),
                            // Text('Send a message')
                          ],
                        ),
                        Icon(Icons.send,color: Color(0xFFc78ce8),)
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
