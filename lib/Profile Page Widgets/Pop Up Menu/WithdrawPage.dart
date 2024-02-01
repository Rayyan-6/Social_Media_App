import 'package:awesome_project/ButtonContainer.dart';
import 'package:awesome_project/Profile%20Page%20Widgets/Pop%20Up%20Menu/ReceivedTip.dart';
import 'package:flutter/material.dart';

import 'PaymentCardsCarousel.dart';
import 'PaymentTiles.dart';

class WithdrawPage extends StatefulWidget {
  const WithdrawPage({super.key});

  @override
  State<WithdrawPage> createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Withdraw',style: TextStyle(fontSize: 20),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PaymentCardsCarousel(),
            // SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ButtonContainer(width: (MediaQuery.of(context).size.width), title: 'WITHDRAW'),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Activity',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
             Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                    children: [
                      // PaymentTiles(title: 'Tipped Creator', subtitle: '@Jonathon2302', value: '-\$ 10.99', time: '11 January 4:12 PM'),
                      ReceivedTip(),
                      // PaymentTiles(title: 'Tipped Creator', subtitle: '@Jonathon2302', value: '-\$ 10.99', time: '11 January 4:12 PM'),
                      ReceivedTip(),
                      ReceivedTip(),
                      ReceivedTip(),
                      ReceivedTip(),
                      ReceivedTip(),
                      ReceivedTip(),


                    ],
                  ),
                              ),





          ],
        ),
      ),
    );
  }
}
