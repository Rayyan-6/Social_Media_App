import 'package:flutter/material.dart';

class StatsColumn extends StatefulWidget {
  final String number;
  final String type;
  const StatsColumn({super.key, required this.number, required this.type});

  @override
  State<StatsColumn> createState() => _StatsColumnState();
}

class _StatsColumnState extends State<StatsColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.number,style: TextStyle(fontWeight: FontWeight.bold),),
        Text(widget.type),
      ],
    );
  }
}
