import 'package:flutter/material.dart';

class AnalyticsSubContainer extends StatefulWidget {
  final String title;
  final String graphUrl;
  final String value;

  const AnalyticsSubContainer({super.key, required this.title, required this.graphUrl, required this.value});

  @override
  State<AnalyticsSubContainer> createState() => _AnalyticsSubContainerState();
}

class _AnalyticsSubContainerState extends State<AnalyticsSubContainer> {
  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 95,
      decoration: BoxDecoration(
        // color: Colors.white,
        color: brightness==Brightness.light?Colors.white:Color(0xFF240b61),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 2.0),
            blurRadius: 4.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text(widget.title,style: TextStyle(fontSize: 14,color: brightness==Brightness.light? Colors.grey:Colors.white),),
                  Text('\$${widget.value}',style: TextStyle(fontSize: 20,color: brightness==Brightness.light? Colors.grey:Colors.white,fontWeight: FontWeight.bold),),
              ],
            ),
            //for graph
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   Image.asset(widget.graphUrl),
              ],
            ),
          ],
        ),
      )
    );
  }
}
