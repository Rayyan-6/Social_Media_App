import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';


class FullScreenImage  extends StatefulWidget {
  final String imgUrl;
  final String tag;
  const FullScreenImage ({super.key, required this.imgUrl, required this.tag});

  @override
  State<FullScreenImage > createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:

      AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Image Preview',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Hero(
          tag: widget.tag,
          child:
          PhotoView(
            imageProvider: AssetImage(widget.imgUrl),
            backgroundDecoration: BoxDecoration(
              color: Colors.black,
            ),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 2,
          ),
          // Image.asset(
          //   widget.imgUrl,
          //   fit: BoxFit.contain,
          // ),
        ),
      ),
    );
  }
}
