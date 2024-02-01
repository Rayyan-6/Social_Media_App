import 'package:flutter/material.dart';


class MyTextField extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final bool obscureText;
  final IconData myicon;
  late final bool obscure ;
  // final String conf;


  MyTextField({
    required this.title,
    required this.controller,
    this.obscureText = false,
    required this.myicon,
    required this.obscure,
    // required this.conf,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          obscureText: widget.obscure,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return '${widget.title} is required';
            }
            return null;
          },
          controller: widget.controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10.0),
            // suffixIcon: GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       widget.obscure = !widget.obscure;
            //     });
            //   },
            //   child: Icon(widget.myicon,color: Colors.grey,
            //   ),
            // ),
            labelText: '  '+widget.title,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            labelStyle: TextStyle(color: Colors.grey),
          ),
          // style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}





