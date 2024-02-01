import 'package:awesome_project/loginPage.dart';
import 'package:awesome_project/signUp.dart';
import 'package:flutter/material.dart';



///initial Start
class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                child: Image.asset(
                  'assets/Frame.png',
                  height: 45,
                  width: 45,
                ),
              )
            ],
          ),
          Flexible(
            child: Stack(
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
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Row(
              children: [
                Text('Get Started',
              style: TextStyle(
                fontSize: 20
              ),
              )],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  'Millions of people\nuse to show their\nideas to world.',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 32.5,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(0),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(
                                color: Colors
                                    .black) // Set the desired border radius
                            ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                    ),
                  ),
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
          ),
        ],
      ),
    );
  }
}
