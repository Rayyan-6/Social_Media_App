import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../ProfilePage.dart';

class CarouselPost extends StatefulWidget {
  final String profilepicurl;
  final String name;
  final String time;
  final String postpicurl;
  final String postpicurl2;
  final String postpicurl3;
  final String postdesc;
  final String likes;
  final String comments;
  final String shares;
  const CarouselPost({super.key, required this.profilepicurl, required this.name, required this.time, required this.postpicurl, required this.postdesc, required this.likes, required this.comments, required this.shares, required this.postpicurl2, required this.postpicurl3});


  @override
  State<CarouselPost> createState() => _CarouselPostState();
}

class _CarouselPostState extends State<CarouselPost> {





  @override
  Widget build(BuildContext context) {
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
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()),
                    );
                  },
                  child: CircleAvatar( //for profile pic
                    radius: 25,
                    backgroundImage:AssetImage(widget.profilepicurl) ,

                  ),
                ),
                SizedBox(width: 10,),
                Column(//for name and time
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(widget.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(widget.time,style: TextStyle(fontSize: 10))
                      ],
                    ),
                    //three dots aftre this
                  ],
                ),
                Container(//for three dots
                ),
              ],
            ),
            SizedBox(height: 10,),
            //Post pic(s)

            Container(
              height: 370.0,
              // height: screenHeight/1.5,
              width: screenWidth,
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16/9,
                  enableInfiniteScroll: false,
                  height: 370.0,

                ),
                items: [
                  widget.postpicurl,
                  widget.postpicurl2,
                  widget.postpicurl3,
                ].map((imageUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: screenWidth,
                        height: screenHeight/1.5,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: AssetImage(imageUrl),
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),

            //////////////////////////////
            SizedBox(height:5 ,),//for post pic
            Text(widget.postdesc),//for pos desc.
            SizedBox(height: 10,),
            Row(//for like comment share
              children: [
                // Image.asset('assets/hearticon.png',height: 35,width: 35,),
                Icon(
                  Icons.favorite_outline_sharp,
                  size: 22.0,
                ),
                SizedBox(width: 2,),
                Text(widget.likes,style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                // Image.asset('assets/msgicon.png',height: 35,width: 35,),
                Icon(
                  Icons.messenger_outline_sharp,
                  size: 22.0,
                ),
                SizedBox(width: 2,),
                Text(widget.comments ,style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                // Image.asset('assets/shareicon.png',height: 35,width: 35,),
                Icon(
                  Icons.send,
                  size: 22.0,
                ),
                SizedBox(width: 2,),
                Text(widget.shares ,style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 5,)

          ],
        ),
      ),
    );
  }
}
