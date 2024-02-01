import 'package:flutter/material.dart';

class TransactionTiles extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String value;
  final String time;


  const TransactionTiles({super.key, required this.icon, required this.title, required this.subtitle, required this.value, required this.time});

  @override
  State<TransactionTiles> createState() => _TransactionTilesState();
}

class _TransactionTilesState extends State<TransactionTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFFc78ce8),
                        ),
                        child: Icon(widget.icon,color: Colors.white,),
                      )
                    ],
                  ),
                  SizedBox(width: 10,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      Text(widget.subtitle,style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(widget.value,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xFFe7bfef)),),
                  Text(widget.time,style: TextStyle(fontSize: 16)),
                ],
              )


            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}

