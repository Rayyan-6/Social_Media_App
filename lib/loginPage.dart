import 'package:awesome_project/ForgotPwdPage.dart';
import 'package:awesome_project/HomePage.dart';
import 'package:awesome_project/signUp.dart';
import 'package:awesome_project/textFields.dart';
import 'package:flutter/material.dart';

import 'elevatedButtons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(

      body: Center(
        child: Column(
          children:[
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
            SizedBox(height: 40,),
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(27, 0, 27, 0),
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
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        MyTextField(title: 'Username', controller: usernameController, myicon: Icons.email, obscure: false,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        MyTextField(title: 'Password', controller: passwordController, myicon: Icons.remove_red_eye_outlined, obscure: true,)
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              child: Row(
                                children: [
                                     Checkbox(
                                      value: false,
                                      onChanged: (bool? value) {
                                      },
                                    ),
                                  Text('Remember Me'),
                                ],
                              ),
                            ),
                          ),
                          // SizedBox(width: 40,),

                          Expanded(
                            child: Container(
                              child: Row(
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
                            ),
                          ),
                          // SizedBox(width: 10,)
                        ],
                      ),
                      // SizedBox(height: 16.0),
                      // MyElevatedButton(title: 'Log In',),
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

                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Expanded(
                            child: Container(
                              // width: 100.0,
                              height: 1.0,
                              color: Colors.black,
                            ),
                          ),
                          Text(' or '),
                          Expanded(
                            child: Container(
                              // width: 100.0,
                              height: 1.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(child: Image.asset('assets/fbIcon.jpg',height: 45,width: 45,)),
                            SizedBox(width: 10,),
                            Container(child: Image.asset('assets/Gicon.png',height: 40,width: 40,)),
                            SizedBox(width: 10,),
                            Container(child: Image.asset('assets/twitterIcon.jpg',height: 40,width: 40,)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
          ),
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Stack(
                      children: <Widget>[
                        Image.asset('assets/Ellipse3.png'),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
                            child: Image.asset('assets/Ellipse2.png')),
                        Center(child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                            child:

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Text('Don\'t have an account? '),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => const SignUpPage()
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
                        )
                        )
                      ]
                  ),]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
