import 'package:awesome_project/Profile%20Page%20Widgets/ProfilePageBundle.dart';
import 'package:flutter/material.dart';

import 'ProfilePagePosts2.dart';

class ProfilePagePosts extends StatefulWidget {
  const ProfilePagePosts({super.key});

  @override
  State<ProfilePagePosts> createState() => _ProfilePagePostsState();
}

class _ProfilePagePostsState extends State<ProfilePagePosts> {
  bool showPosts = true;

  void onFollowStatusChanged(bool newFollowStatus) {
    setState(() {
      showPosts = newFollowStatus;
    });
  }


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        // for posts and bundles button
        Container(
          height: 36,
          width: screenWidth,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showPosts = true;
                      });
                    },
                    child: Container(
                      height: 20,
                      width: screenWidth / 2,
                      // color: showPosts ? Color(0xFFe7bfef) : Colors.white,
                      child: Center(
                        child: Text(
                          'Posts',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showPosts = false;
                      });
                    },
                    child: Container(
                      height: 20,
                      width: screenWidth / 2,
                      // color: showPosts ? Colors.white : Color(0xFFe7bfef),
                      child: Center(
                        child: Text(
                          'Bundles',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              // for selected bar on the bottom
              Row(
                children: [
                  Container(
                    width: screenWidth / 2,
                    child: Divider(
                      color: Color(0xFFe7bfef),
                      thickness: showPosts ? 5 : 0,
                      height: showPosts ? 5 : 0,
                    ),
                  ),
                  Container(
                    width: screenWidth / 2,
                    child: Divider(
                      color: Color(0xFFe7bfef),
                      thickness: showPosts ? 0 : 5,
                      height: showPosts ? 0 : 5,

                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        // Show either Posts or Bundles based on the selected button
        Visibility(
          visible: showPosts,
          child: Column(
            children: [
              ProfilePagePosts2(
                imgurl: 'assets/flowerpost.jpg',
                imgurl2: 'assets/samplepostpic.png',
                imgurl3: 'assets/flowerpost.jpg',
              ),
              ProfilePagePosts2(
                  imgurl: 'assets/homepagepic.png',
                  imgurl2: 'assets/flowerpost.jpg',
                  imgurl3: 'assets/homepagepic.png'),
              ProfilePagePosts2(
                  imgurl: 'assets/flowerpost.jpg',
                  imgurl2: 'assets/homepagepic.png',
                  imgurl3: 'assets/flowerpost.jpg'),
              ProfilePagePosts2(
                  imgurl: 'assets/samplepostpic.png',
                  imgurl2: 'assets/flowerpost.jpg',
                  imgurl3: 'assets/samplepostpic.png'),
              ProfilePagePosts2(
                  imgurl: 'assets/flowerpost.jpg',
                  imgurl2: 'assets/homepagepic.png',
                  imgurl3: 'assets/flowerpost.jpg'),
              ProfilePagePosts2(
                  imgurl: 'assets/homepagepic.png',
                  imgurl2: 'assets/flowerpost.jpg',
                  imgurl3: 'assets/samplepostpic.png'),
            ],
          ),
        ),
        Visibility(
          visible: !showPosts,
          child: Column(
            children: [
              ProfilePageBundle(imgurl: 'assets/flowerpost.jpg', imgurl2: 'assets/homepagepic.png', imgurl3: 'assets/profilecover.jpg'),
              ProfilePageBundle(imgurl: 'assets/samplepostpic.png', imgurl2: 'assets/profilecover.jpg', imgurl3: 'assets/fbIcon.jpg'),
              ProfilePageBundle(imgurl: 'assets/flowerpost.jpg', imgurl2: 'assets/homepagepic.png', imgurl3: 'assets/profilecover.jpg'),
              ProfilePageBundle(imgurl: 'assets/samplepostpic.png', imgurl2: 'assets/fbIcon.jpg', imgurl3: 'assets/profilecover.jpg'),
            ],
          )
        ),
      ],
    );
  }
}
