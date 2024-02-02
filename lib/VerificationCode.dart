import 'package:awesome_project/textFields.dart';
import 'package:flutter/material.dart';

import 'newLoginPage.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({super.key});

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  final TextEditingController vrfCodeController = TextEditingController();

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
                        Text('Sign Up',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                             Flexible(

                               child: Text('We have sent a 6 digit verification code to you email',softWrap: true,textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                                                           ),
                             ),
                        ],
                      ),
                    Text('\nabc@gmail.com',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),

                    SizedBox(height: 20,),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:

                        MyTextField(title: 'Verification Code', controller: vrfCodeController, myicon: Icons.email, obscure: false,)
                    ),
                    // SizedBox(height: 16.0),
                    // MyElevatedButton(title: 'Create Account',),

                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const newLoginPage()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(7.8, 0, 7.8, 0),
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
                              'Create Account',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),


                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Didn\'t receive code? '),
                        Text('Resend'),
                      ],
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
    );;
  }
}
