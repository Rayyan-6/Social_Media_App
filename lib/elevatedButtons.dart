import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final String title;
  const MyElevatedButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Container(
        height: 45,
        width: screenWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFe7bfef),
              Color(0xFFc78ce8)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,

          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
          child: Center(
            child: Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),

      ),
    );
  }
}


