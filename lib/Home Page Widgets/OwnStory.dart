import 'package:awesome_project/ButtonContainer.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class OwnStoryView extends StatefulWidget {
  const OwnStoryView({super.key});

  @override
  State<OwnStoryView> createState() => _OwnStoryViewState();
}

class _OwnStoryViewState extends State<OwnStoryView> {
  XFile? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    try {
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _image = pickedFile;
        });
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(8, 30, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back,color: Colors.white,)),
                  Text('Add Story',style: TextStyle(color: Colors.white,fontSize: 16),),
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.cancel,color: Colors.white,)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    _pickImage();
                  },
                  child:

                  _image != null ?

                  Column(
                    children: [
                      Image.file(
                        File(_image!.path),
                        height: screenHeight/2.2,
                        width: screenWidth/1.05,
                        fit: BoxFit.cover,
                      )
                    ],
                  )
                  :
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _image != null ? Image.file(
                        File(_image!.path),
                        height: screenHeight/2.1,
                        width: screenWidth/1.05,
                        fit: BoxFit.cover,
                      ) : Image.asset('assets/cameraIcon.png'),

                      SizedBox(height: 15,),
                      Container(
                          width: screenWidth/1.3,
                          child:  Text('Click here to choose image/video to post as a story',style: TextStyle(color: Colors.white,),softWrap: true,textAlign: TextAlign.center,),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text('hello',style: TextStyle(color: Colors.white),)
                  ButtonContainer(width: screenWidth/2, title: 'ADD TO STORY',onPressed: (){

                  },)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
