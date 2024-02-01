import 'package:awesome_project/Home%20Page%20Widgets/FullScreenImage.dart';
import 'package:flutter/material.dart';

class ProfilePagePosts2 extends StatefulWidget {
  final String imgurl;
  final String imgurl2;
  final String imgurl3;
  const ProfilePagePosts2({super.key, required this.imgurl, required this.imgurl2, required this.imgurl3,});

  @override
  State<ProfilePagePosts2> createState() => _ProfilePagePosts2State();
}

class _ProfilePagePosts2State extends State<ProfilePagePosts2> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return  Container(
        height: 95,
        child: Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FullScreenImage(imgUrl: widget.imgurl, tag: widget.imgurl)),
                );

              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                ),
                width: screenWidth/3,
                child: Image(
                    image: AssetImage(widget.imgurl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FullScreenImage(imgUrl: widget.imgurl2, tag: widget.imgurl2)),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                ),
                width: screenWidth/3,
                child: Image(
                  image: AssetImage(widget.imgurl2),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FullScreenImage(imgUrl: widget.imgurl3, tag: widget.imgurl3)),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                ),
                width: screenWidth/3,
                child: Image(
                  image: AssetImage(widget.imgurl3),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
    );
  }
}
