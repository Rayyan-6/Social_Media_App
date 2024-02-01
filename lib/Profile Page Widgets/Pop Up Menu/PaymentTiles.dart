import 'package:flutter/material.dart';

class PaymentTiles extends StatefulWidget {
  final String title;
  final String subtitle;
  final String value;
  final String time;
  const PaymentTiles({super.key, required this.title, required this.subtitle, required this.value, required this.time});

  @override
  State<PaymentTiles> createState() => _PaymentTilesState();
}

class _PaymentTilesState extends State<PaymentTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(widget.title,style: TextStyle(fontSize: 16),),
                    ],
                  ),
                  Row(
                    children: [
                      Text(widget.subtitle,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(widget.value,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Text(widget.time,style: TextStyle(fontSize: 16),),
                    ],
                  ),

                ],
              ),
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
