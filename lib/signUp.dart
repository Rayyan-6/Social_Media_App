import 'package:awesome_project/loginPage.dart';
import 'package:awesome_project/newLoginPage.dart';
import 'package:awesome_project/textFields.dart';
import 'package:flutter/material.dart';

import 'elevatedButtons.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confpasswordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
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

          Center(

          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(27, 0, 27, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sign Up',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                          child: MyTextField(
                        title: 'Email',
                        controller: emailController,
                        myicon: Icons.email,
                        obscure: false,
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                          child: MyTextField(
                            title: 'Username',
                            controller: usernameController,
                            myicon: Icons.email,
                            obscure: false,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                          key: _formKey,
                          child: MyTextField(
                            title: 'Password',
                            controller: passwordController,
                            myicon: Icons.remove_red_eye_outlined,
                            obscure: true,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyTextField(
                        title: 'Confirm Password',
                        controller: confpasswordController,
                        myicon: Icons.remove_red_eye_outlined,
                        obscure: true,
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (bool? value) {
                          },
                        ),
                        Flexible(
                            child:
                            RichText(
                              text: TextSpan(
                                text: 'By signing up you accept the ',
                                style: TextStyle(
                                  color: Colors.black
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Terms of Service',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  TextSpan(
                                    text: ' and ',
                                  ),
                                  TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            // Validation passed,
                            if (passwordController.text !=
                                confpasswordController.text) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.blue,
                                  content: Center(
                                      child: Text(
                                    'Passwords do not match',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 18),
                                  )),
                                ),
                              );
                            } else {
                              print('Passwords are equal!');
                            }
                          }
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
                              'Sign Up',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0),
                  ],
                ),
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
                              Text('Already have an account? '),
                              GestureDetector(
                                onTap: (){
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const newLoginPage()),
                                  );
                                },
                                child: Text('Sign In',
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
    );
    ;
  }
}
