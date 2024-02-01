import 'package:flutter/material.dart';

class ButtonContainer extends StatefulWidget {
  final String title;
  final double width;
  final VoidCallback? onPressed;

  const ButtonContainer({super.key, required this.width, required this.title, this.onPressed});

  @override
  State<ButtonContainer> createState() => _ButtonContainerState();
}

class _ButtonContainerState extends State<ButtonContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: 38,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            colors: [Color(0xFFe7bfef),
              Color(0xFFc78ce8)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
