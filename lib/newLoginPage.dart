import 'package:awesome_project/ForgotPwdPage.dart';
import 'package:awesome_project/HomePage.dart';
import 'package:awesome_project/textFields.dart';
import 'package:flutter/material.dart';

import 'elevatedButtons.dart';
import 'newSignupPage.dart';

class newLoginPage extends StatefulWidget {
  const newLoginPage({super.key});

  @override
  State<newLoginPage> createState() => _newLoginPageState();
}

class _newLoginPageState extends State<newLoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //first row
          Row(
            children: [
               Padding(
                 padding: EdgeInsets.fromLTRB(20, 35, 0, 0),
                 child: Image.asset(
                    'assets/Frame.png',
                    height: 45,
                    width: 45,
                  ),
               ),
            ],
          ),
          //second column
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Log In',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child:
                    MyTextField(title: 'Username', controller: usernameController, myicon: Icons.email, obscure: false,)
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child:
                    MyTextField(title: 'Password', controller: passwordController, myicon: Icons.remove_red_eye_outlined, obscure: true,)
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Row(
                          children: [
                             Checkbox(
                                value: true,
                                onChanged: (bool? value) {
                                  setState(() {
                                    value=!value!;
                                  });
                                },
                              ),
                            Text('Remember Me'),
                          ],
                        ),
                    Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:[
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ForgotPwdpage()),
                                );
                              },
                              child: Text('Forgot Password?',
                                style: TextStyle(
                                    color: Colors.grey
                                ),),
                            ),],
                        ),
                  ],

                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()),
                    );
                  },
                  child: Container(
                    height: 38,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: [Color(0xFFe7bfef), Color(0xFFc78ce8)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],

            ),
          ),
          //footer stack
          Stack(
              children: <Widget>[
                Image.asset('assets/Ellipse3.png',width: screenWidth,),
                 Padding(
                   padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
                   child: Image.asset('assets/Ellipse2.png',width: screenWidth,),
                 ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text('Don\'t have an account? '),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const newSignupPage()
                                ),
                              );
                            },
                            child: Text('Create new one',
                              style: TextStyle(
                                  color: Colors.blue
                              ),
                            ),
                          ),
                        ]),
                  ),
              ]
          ),
        ],
      ),
    );
  }
}
