import 'package:awesome_project/Home%20Page%20Widgets/BtmNavBar.dart';
import 'package:awesome_project/Home%20Page%20Widgets/CarouselPost.dart';
import 'package:awesome_project/Home%20Page%20Widgets/OwnStory.dart';
import 'package:awesome_project/Home%20Page%20Widgets/Post.dart';
import 'package:awesome_project/NotificationsPage.dart';
import 'package:flutter/material.dart';

import 'Home Page Widgets/Story.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(width: 5,),
             Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                        child: Container(
                          child: Image.asset(
                            'assets/Frame.png',
                            height: 45,
                            width: 45,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 25, 20, 0),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) => NotificationsPage())
                              );
                            },
                            child: Container(
                                child: Image.asset('assets/bellicon.png')),
                          ),
                        ))
                  ],
                ),
              ),


              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //row for stories circles
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OwnStoryView()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey[350],
                          child: Image.asset('assets/plusicon.png')
                                            ),
                        ),
                      ),
                      Story(profileImgUrl: 'assets/flowersbg.jpg', storyImgUrl: 'assets/homepagepic.png',),
                      Story(profileImgUrl: 'assets/twitterIcon.jpg',storyImgUrl: 'assets/flowersbg.jpg',),
                      Story(profileImgUrl: 'assets/fbIcon.jpg',storyImgUrl: 'assets/profilecover.jpg',),
                      Story(profileImgUrl: 'assets/homepagestory.png',storyImgUrl: 'assets/flowersbg.jpg',),
                      Story(profileImgUrl: 'assets/twitterIcon.jpg',storyImgUrl: 'assets/profilecover.jpg',),
                      Story(profileImgUrl: 'assets/homepagestory.png',storyImgUrl: 'assets/homepagepic.png',),
                      Story(profileImgUrl: 'assets/flowersbg.jpg',storyImgUrl: 'assets/flowersbg.jpg',),

                      SizedBox(width: 5,)
                    ],
                  ),
                ),
              ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: Column(
                children: [
                  // CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),


                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'James Courtney', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/homepagepic.png', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  Post(profilepicurl: 'assets/homepagestory.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/profilecover.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),
                  CarouselPost(profilepicurl: 'assets/homepagedp.png', name: 'Sample name', time: '12 mins ago', postpicurl: 'assets/flowersbg.jpg',postpicurl2: 'assets/profilecover.jpg', postpicurl3: 'assets/flowerpost.jpg', postdesc: 'Amazing game session last night. Amazing session last night', likes: '24K' , comments: '727' , shares: '10' ),

                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BtmNavBar(),
    );
  }
}
