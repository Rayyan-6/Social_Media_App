import 'package:awesome_project/newLoginPage.dart';
import 'package:awesome_project/signUp.dart';
import 'package:flutter/material.dart';

import 'loginPage.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 50),
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
                    Column(children: [
                      Column(children: [
                        Container(
                          width: 320,
                          height: 190,
                          color: Colors.transparent,
                          child: Image.asset(
                            'assets/Vector2.png',
                            // height: 150,
                            //   width: 150,
                          ),
                        ),
                        // SizedBox(height: 20,),
                        Container(
                          width: 270,
                          height: 170,
                          color: Colors.transparent,
                          child: Image.asset('assets/Vector2.png'),
                        ),
                        // Row(children: [Text('----------------')],)
                      ]),
                    ]),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 80, 0, 0),
                      child: Container(
                        width: 290,
                        height: 180,
                        color: Colors.transparent,
                        child: Image.asset(
                          'assets/Frame.png',
                          // height: 150,
                          //   width: 150,
                        ),
                      ),
                    ),
                  ],
                ),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
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
                            Navigator.push(
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
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
                              Navigator.push(
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
                    ),
                  ],
                ),
              )

            ],
          ),
      ),
    );

  }
}
