import 'package:awesome_project/Profile%20Page%20Widgets/Pop%20Up%20Menu/PaymentCardsCarousel.dart';
import 'package:flutter/material.dart';

import 'PaymentTiles.dart';

class PaymentUserPage extends StatefulWidget {
  const PaymentUserPage({super.key});

  @override
  State<PaymentUserPage> createState() => _PaymentUserPageState();
}

class _PaymentUserPageState extends State<PaymentUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deposit',style: TextStyle(fontSize: 20),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //for card carousels
            PaymentCardsCarousel(),
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
                  PaymentTiles(title: 'Tipped Creator', subtitle: '@Jonathon2302', value: '-\$ 10.99', time: '11 January 4:12 PM'),
                  PaymentTiles(title: 'Tipped Creator', subtitle: '@Jonathon2302', value: '-\$ 99.99', time: '11 January 4:12 PM'),
                PaymentTiles(title: 'Tipped Creator', subtitle: '@Jonathon2302', value: '-\$ 10.99', time: '11 January 4:12 PM'),
                  PaymentTiles(title: 'Tipped Creator', subtitle: '@Jonathon2302', value: '-\$ 99.99', time: '11 January 4:12 PM'),
                PaymentTiles(title: 'Tipped Creator', subtitle: '@Jonathon2302', value: '-\$ 10.99', time: '11 January 4:12 PM'),
                  PaymentTiles(title: 'Tipped Creator', subtitle: '@Jonathon2302', value: '-\$ 99.99', time: '11 January 4:12 PM'),
                  PaymentTiles(title: 'Tipped Creator', subtitle: '@Jonathon2302', value: '-\$ 99.99', time: '11 January 4:12 PM'),
                  PaymentTiles(title: 'Tipped Creator', subtitle: '@Jonathon2302', value: '-\$ 99.99', time: '11 January 4:12 PM'),

                ],
              ),
            )


          ],
        ),
      ),

    );
  }
}
