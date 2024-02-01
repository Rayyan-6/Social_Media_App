import 'package:flutter/material.dart';

class ProfilePageDropdownItem extends StatefulWidget {
  final String value;
  final String text;
  final IconData icon;
  // final String icon;

  const ProfilePageDropdownItem({super.key, required this.text, required this.value, required this.icon});

  @override
  State<ProfilePageDropdownItem> createState() => _ProfilePageDropdownItemState();
}

class _ProfilePageDropdownItemState extends State<ProfilePageDropdownItem> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuItem<String>(
      value: widget.value,
      child: Container(
        // Custom styling for Option 1
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(widget.icon),
            SizedBox(width: 5,),
            Text(widget.text, ),
          ],
        ),
      ),
    );
  }
}
