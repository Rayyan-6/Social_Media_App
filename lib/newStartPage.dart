import 'package:awesome_project/signUp.dart';
import 'package:flutter/material.dart';

import 'newLoginPage.dart';


class newStartPage extends StatefulWidget {
  const newStartPage({super.key});
  @override
  State<newStartPage> createState() => _newStartPageState();
}

class _newStartPageState extends State<newStartPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 35, 0, 0),
                child: Image.asset(
                  'assets/Frame.png',
                  height: 45,
                  width: 45,
                ),
              )
            ],
          ),

              Stack(
                children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                         Image.asset(
                          'assets/startPageImg.png',
                          height: screeHeight/2,
                            width: screenWidth,
                        ),

                    ]),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
                    child: Container(
                      width: screenWidth,
                      height: screeHeight/4.3,
                      color: Colors.transparent,
                      child: Image.asset(
                        'assets/Frame.png',
                        // height: 150,
                          width: screenWidth,
                      ),
                    ),
                  ),




                ],
              ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(
                  children: [
                    Text('Get Started',
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                child: Row(
                  children: [
                    Text(
                      'Millions of people\nuse to show their\nideas to world.',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //last row for buttons
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                            colors: [Color(0xFFe7bfef), Color(0xFFc78ce8)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        height: 32.5,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const newLoginPage()
                              ),
                            );
                          },
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all<double>(0),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent,
                            ),
                            foregroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent,
                            ),
                          ),
                          child: Text(
                            'Log In',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                    ),

                    SizedBox(width: 15,),

                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                            colors: [Color(0xFFe7bfef), Color(0xFFc78ce8)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        height: 32.5,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()),
                            );
                          },
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all<double>(0),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent,
                            ),
                            foregroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent,
                            ),
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                    ),

                  ],
                ),
              ),






        ],
      )
    );
  }
}
