import 'package:awesome_project/ProfilePage.dart';
import 'package:flutter/material.dart';

import 'FullScreenImage.dart';

class Post extends StatefulWidget {
  final String profilepicurl;
  final String name;
  final String time;
  final String postpicurl;
  final String postdesc;
  final String likes;
  final String comments;
  final String shares;

  const Post(
      {super.key,
      required this.profilepicurl,
      required this.name,
      required this.time,
      required this.postpicurl,
      required this.postdesc,
      required this.likes,
      required this.comments,
      required this.shares});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  final TextEditingController msgController = TextEditingController();
  // bool selected1 = false;
  // bool selected2 = false;
  // bool selected3 = false;
  // bool selected4 = false;

  bool _isDialogOpen= false;

  Future<void> _showMyDialog(BuildContext context) async {
    String selectedOption = 'Option 1';

    bool selected1 = false;
    bool selected2 = false;
    bool selected3 = false;
    bool selected4 = false;
    Color sel1Color = Colors.transparent;
    Color sel2Color = Colors.transparent;
    Color sel3Color = Colors.transparent;
    Color sel4Color = Colors.transparent;

    void toggleColor() {
      setState(() {
        sel1Color = (sel2Color == Colors.transparent) ? Color(0xFFe7bfef) : Colors.transparent;
        sel2Color = (sel2Color == Colors.transparent) ? Color(0xFFe7bfef) : Colors.transparent;
        sel3Color = (sel3Color == Colors.transparent) ? Color(0xFFe7bfef) : Colors.transparent;
        sel4Color = (sel4Color == Colors.transparent) ? Color(0xFFe7bfef) : Colors.transparent;
      });
    }


    Brightness brightness = Theme.of(context).brightness;
    setState(() {
      _isDialogOpen = true;
    });
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: SingleChildScrollView(
            child: AlertDialog(
              backgroundColor: brightness==Brightness.light? Colors.white:Color(0xFF240b61),
              contentPadding: EdgeInsets.all(20.0), // Adjust content padding for height
              titlePadding: EdgeInsets.fromLTRB(25, 20, 25, 20),  // Adjust title padding for width
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Tip Creator',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                      ),
                    )
                  ]
              ),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text('Support this creator by saying thanks'),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: brightness == Brightness.light ?  Colors.white : Color(0xFF240b61),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 4.0,
                              spreadRadius: 4.0,
                            ),
                          ],
                        ),
                        width: (MediaQuery.of(context).size.width)/1.7,
                        height: 250 ,
                        child: TextFormField(
                          controller: msgController,

                          maxLines: null, // Set maxLines to null for unlimited lines
                          textInputAction: TextInputAction.newline, // Enable Enter key for new lines

                          decoration: InputDecoration(
                            // contentPadding: EdgeInsets.symmetric(vertical: 10.0),

                            hintText: 'Add your message',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),

                            hintStyle: TextStyle(color: brightness == Brightness.light ?  Colors.grey:Colors.white,fontSize: 15),
                          ),
                          // style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Tip Amount',style: TextStyle(fontSize: 16,
                        color: brightness == Brightness.light ?  Colors.black:Colors.white),)],
                  ),
                  SizedBox(height: 5,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(

                        onTap: toggleColor,
                        child: Container(
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                            color: sel1Color,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black,width: 2),
                          ),
                          child: Center(child: Text('\$9.99')),
                        ),
                      ),
                      SizedBox(width: 20,),

                      GestureDetector(

                        onTap: toggleColor,

                        child: Container(
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                              color: sel2Color,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black,width: 2)
                          ),
                          child: Center(child: Text('\$19.99')),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        // onTap: (){
                        //   setState(() {
                        //     selected3=!selected3;
                        //     // sel3Color= Colors.pinkAccent;
                        //     sel3Color= selected3?Colors.pinkAccent: Colors.transparent;
                        //
                        //   });
                        // },
                        onTap: toggleColor,

                        child: Container(
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                              color: sel3Color,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black,width: 2)
                          ),
                          child: Center(child: Text('\$29.99')),
                        ),
                      ),
                      SizedBox(width: 20,),

                      GestureDetector(
                        // onTap: (){
                        //   setState(() {
                        //     selected4=!selected4;
                        //     sel4Color= selected4?Colors.pinkAccent:Colors.transparent;
                        //
                        //   });
                        // },
                        onTap: toggleColor,

                        child: Container(
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                              color: sel4Color,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black,width: 2)
                          ),
                          child: Center(child: Text('\$39.99')),
                        ),
                      ),
                    ],
                  ),

                ],
              ),




              actions: [
                GestureDetector(
                  onTap: (){
                    // Navigator.pushReplacement(
                    // context,
                    // MaterialPageRoute(
                    //     builder: (context) => const VerificationCode()
                    // ),
                    // );
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                            colors: [Color(0xFFe7bfef),
                              Color(0xFFc78ce8)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Tip Creator',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {





//////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////






    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: Container(
        width: screenWidth,
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()),
                    );
                  },
                  child: CircleAvatar(
                    //for profile pic
                    radius: 25,
                    backgroundImage: AssetImage(widget.profilepicurl),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  //for name and time
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(widget.time, style: TextStyle(fontSize: 10))
                      ],
                    ),
                    //three dots aftre this
                  ],
                ),
                Container(//for three dots
                    ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //Post pic
            Stack(
              children:[ Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                  height: 370,
                  width: screenWidth,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FullScreenImage(imgUrl: widget.postpicurl, tag: widget.postpicurl,),
                        ),
                      );
                    },
                    child: Hero(

                      tag: 'null',
                      child: Image(
                        image: AssetImage(widget.postpicurl),
                        width: screenWidth,
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
              ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FullScreenImage(imgUrl: widget.postpicurl, tag: widget.postpicurl,),
                      ),
                    );
                  },
                  child: Hero(
                                tag: 'null',
                    child: Container(
                      //a container to show 'Tip Creator' button on posts
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      height: 370,
                      width: screenWidth,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                         // selected1 = false;
                                         // selected2 = false;
                                         // selected3 = false;
                                         // selected4 = false;

                                      });
                                      _showMyDialog(context);
                                    },
                                    child: Container(
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.transparent,
                                          border: Border.all(color: Colors.white, width: 2.0),
                                        ),
                                        child: Center(child: Text('\$  Tip Creator',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),))),
                                  )
                                ],
                              ),

                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ), //for post pic
            Text(widget.postdesc,style: TextStyle(fontSize: 14),), //for pos desc.
            SizedBox(
              height: 10,
            ),
            Row(
              //for like comment share
              children: [
                Icon(
                  Icons.favorite_outline_sharp,
                  size: 22.0,
                ),
                SizedBox(width: 2,),

                Text(
                  widget.likes,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                // Image.asset(

                Icon(
                  Icons.messenger_outline_sharp,
                  size: 22.0,
                ),
                SizedBox(width: 2,),

                Text(
                  widget.comments,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.send,
                  size: 22.0,
                ),
                SizedBox(width: 2,),
                Text(
                  widget.shares,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}

