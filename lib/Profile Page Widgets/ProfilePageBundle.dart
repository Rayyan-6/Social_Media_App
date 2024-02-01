import 'package:flutter/material.dart';

class ProfilePageBundle extends StatefulWidget {
  final String imgurl;
  final String imgurl2;
  final String imgurl3;
  const ProfilePageBundle({super.key, required this.imgurl, required this.imgurl2, required this.imgurl3});

  @override
  State<ProfilePageBundle> createState() => _ProfilePageBundleState();
}

class _ProfilePageBundleState extends State<ProfilePageBundle> {
  
  @override
  Widget build(BuildContext context) {
    double screenWidth= MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    return Container(
      height: 105,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            width: screenWidth/3,
            height: 105,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage(widget.imgurl),fit: BoxFit.fill,),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            width: screenWidth/3,
            height: 105,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage(widget.imgurl2),fit: BoxFit.fill,),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            width: screenWidth/3,
            height: 105,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage(widget.imgurl3),fit: BoxFit.fill,),
            ),
          ),
        ],
      ),
      
    );
  }
}
