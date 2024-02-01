import 'package:awesome_project/ButtonContainer.dart';
import 'package:flutter/material.dart';

import 'PaymentTiles.dart';

class ReceivedTip extends StatefulWidget {
  const ReceivedTip({super.key});

  @override
  State<ReceivedTip> createState() => _ReceivedTipState();
}

class _ReceivedTipState extends State<ReceivedTip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 5,),
            PaymentTiles(title: 'Received Tip', subtitle: '@Jonas', value: '-\$ 10.99', time: '11 January 4:12 PM'),
            ButtonContainer(width: (MediaQuery.of(context).size.width), title: 'SAY THANKS'),
            SizedBox(height: 5,)
          ],
        ),
      ),
    );
  }
}
