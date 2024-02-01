import 'package:flutter/material.dart';

import '../../ButtonContainer.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  final TextEditingController contactController = TextEditingController();
  final TextEditingController enquiriesController = TextEditingController();
  final TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;

    return Scaffold(
      appBar: AppBar(
        title: Text('Support'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Divider(color: brightness == Brightness.light ?  Colors.grey :Colors.white),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: brightness == Brightness.light ?  Colors.white:Color(0xFF240b61),
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
                  width: (MediaQuery.of(context).size.width)/1.2,
                  height: 50 ,
                  child: TextFormField(
                    controller: contactController,
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.symmetric(vertical: 10.0),

                      hintText: 'Contact number',
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
                SizedBox(height: 15,),
                Container(
                  decoration: BoxDecoration(
                    color: brightness == Brightness.light ?  Colors.white:Color(0xFF240b61) ,
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
                  width: (MediaQuery.of(context).size.width)/1.2,
                  height: 50 ,
                  child: TextFormField(
                    controller: enquiriesController,
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.symmetric(vertical: 10.0),

                      hintText: 'General Enquiries',
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
                SizedBox(height: 15,),
                Container(
                  decoration: BoxDecoration(
                    color: brightness == Brightness.light ?  Colors.white:Color(0xFF240b61),
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
                  width: (MediaQuery.of(context).size.width)/1.2,
                  height: 350 ,
                  child: TextFormField(
                    controller: descController,

                    maxLines: null, // Set maxLines to null for unlimited lines
                    textInputAction: TextInputAction.newline, // Enable Enter key for new lines

                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.symmetric(vertical: 10.0),

                      hintText: 'Description',
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
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: ButtonContainer(width: (MediaQuery.of(context).size.width)/1.2, title: 'Submit',),
            ),

          ],
        ),
      ),
    );
  }
}
