import 'package:flutter/material.dart';

class EditProfileField extends StatefulWidget {
  final String title;
  final String hintText;
  final Color hintColor;
  final TextEditingController controller;

  const EditProfileField({super.key, required this.title, required this.hintText, required this.hintColor, required this.controller});

  @override
  State<EditProfileField> createState() => _EditProfileFieldState();
}

class _EditProfileFieldState extends State<EditProfileField> {


//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50 ,
//       width: (MediaQuery.of(context).size.width)/1.0,
//       child: Row(
// mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//                Container(
//                    width: (MediaQuery.of(context).size.width)/3,
//                    child: Text(widget.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
//           // SizedBox(width: 10,),
//           //text field
//           Container(
//             width: (MediaQuery.of(context).size.width)/2,
//             decoration: BoxDecoration(
//               color: Colors.transparent,
//             ),
//             child: TextFormField(
//               controller: widget.controller,
//               decoration: InputDecoration(
//                   hintText: widget.hintText,
//                   hintStyle: TextStyle(color: widget.hintColor,fontSize: 18,)
//               ),
//               // style: TextStyle(color: Colors.blue),
//             ),
//           ),
//         ],
//       ),
//     );
//   }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: (MediaQuery.of(context).size.width) / 1.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: (MediaQuery.of(context).size.width) / 3,
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 10), // Add some space between the text and the text field
          // Text field
          Container(
            width: (MediaQuery.of(context).size.width) /2, // Adjust width calculation
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: TextFormField(
              controller: widget.controller,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: TextStyle(color: widget.hintColor, fontSize: 18),
              ),
              // style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }























  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    widget.controller.dispose();
    super.dispose();
  }
}
