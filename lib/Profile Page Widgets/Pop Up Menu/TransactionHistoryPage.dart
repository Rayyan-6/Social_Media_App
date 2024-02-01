import 'package:awesome_project/Profile%20Page%20Widgets/Pop%20Up%20Menu/PaymentUserPage.dart';
import 'package:awesome_project/Profile%20Page%20Widgets/Pop%20Up%20Menu/TransactionTiles.dart';
import 'package:flutter/material.dart';

import 'WithdrawPage.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    Brightness brightness = Theme.of(context).brightness;


    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text('Transaction History',style: TextStyle(color: brightness== Brightness.light? Colors.black:Colors.white,fontSize: 25),),
        centerTitle: true,
        backgroundColor: Color(0xFFe7bfef),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: screenWidth,
            height: screenHeight / 2.7,
            color: Color(0xFFe7bfef),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 50, 0, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Balance', style: TextStyle(fontSize: 20,color: brightness== Brightness.light? Colors.black:Colors.white)),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('4,840.12', style: TextStyle(fontSize: 40,color: brightness== Brightness.light? Colors.black:Colors.white)),
                      SizedBox(width: 8),
                      Text('USDC', style: TextStyle(fontSize: 25,color: brightness== Brightness.light? Colors.black:Colors.white)),
                    ],
                  ),
                  SizedBox(height: 7),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PaymentUserPage()),
                          );
                        },
                        child: Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFFc78ce8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.payment, color: Colors.white),
                              Text('Deposit', style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> WithdrawPage())
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.deepPurple[200],
                          ),
                          height: 40,
                          width: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.move_up_sharp, color: Colors.black),
                              Text('Withdraw', style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(' ', style: TextStyle(fontSize: 20, color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(15.0),
          //   child: Row(
          //     children: [
          //       Text('Today', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          //     ],
          //   ),
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 8),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Today', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 5,),

                    TransactionTiles(icon: Icons.arrow_upward_outlined, title: 'John Eric', subtitle: 'Income', value: '+12.00 USDC', time: '20:37'),
                                    TransactionTiles(icon: Icons.arrow_downward_outlined, title: 'Pull & Bear', subtitle: 'Outcome', value: '-32.00 USDC', time: '20:37'),
                                    TransactionTiles(icon: Icons.arrow_upward_outlined, title: 'Master Card', subtitle: 'Income', value: '+350.00 USDC', time: '20:37'),
                                    TransactionTiles(icon: Icons.arrow_downward_outlined, title: 'Max Vladmir', subtitle: 'Outcome', value: '+12.00 USDC', time: '20:37'),
                                    TransactionTiles(icon: Icons.arrow_upward_outlined, title: 'Cory Wills', subtitle: 'Income', value: '+40.00 USDC', time: '20:37'),
                                    TransactionTiles(icon: Icons.arrow_downward_outlined, title: 'Demma Gvasolia', subtitle: 'Outcome', value: '+12.00 USDC', time: '20:37'),
                                    TransactionTiles(icon: Icons.arrow_upward_outlined, title: 'John Eric', subtitle: 'Income', value: '+12.00 USDC', time: '20:37'),
                                    TransactionTiles(icon: Icons.arrow_downward_outlined, title: 'Pull & Bear', subtitle: 'Outcome', value: '-32.00 USDC', time: '20:37'),
                                    TransactionTiles(icon: Icons.arrow_upward_outlined, title: 'Master Card', subtitle: 'Income', value: '+350.00 USDC', time: '20:37'),
                                    TransactionTiles(icon: Icons.arrow_downward_outlined, title: 'Max Vladmir', subtitle: 'Outcome', value: '+12.00 USDC', time: '20:37'),
                                    TransactionTiles(icon: Icons.arrow_upward_outlined, title: 'Cory Wills', subtitle: 'Income', value: '+40.00 USDC', time: '20:37'),
                                    TransactionTiles(icon: Icons.arrow_downward_outlined, title: 'Demma Gvasolia', subtitle: 'Outcome', value: '+12.00 USDC', time: '20:37'),
                                    TransactionTiles(icon: Icons.arrow_downward_outlined, title: 'Pull & Bear', subtitle: 'Outcome', value: '-32.00 USDC', time: '20:37'),
                                    TransactionTiles(icon: Icons.arrow_upward_outlined, title: 'Master Card', subtitle: 'Income', value: '+350.00 USDC', time: '20:37'),
                 ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

