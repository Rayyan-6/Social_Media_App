import 'package:awesome_project/VerificationCode.dart';
import 'package:awesome_project/textFields.dart';
import 'package:flutter/material.dart';
import 'newLoginPage.dart';

class ForgotPwdpage extends StatefulWidget {
  const ForgotPwdpage({super.key});
  @override
  State<ForgotPwdpage> createState() => _ForgotPwdpageState();
}
class _ForgotPwdpageState extends State<ForgotPwdpage> {
  bool _isDialogOpen= false;
  Future<void> _showMyDialog(BuildContext context) async {
    Brightness brightness = Theme.of(context).brightness;
    setState(() {
      _isDialogOpen = true;
    });
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: brightness==Brightness.light? Colors.white:Color(0xFF240b61),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Check your email',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                )
              ]),
          content: Text('We have sent instructions to recover your password to your email',textAlign: TextAlign.center,),
          actions: [
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VerificationCode()),);
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    colors: [Color(0xFFe7bfef),
                      Color(0xFFc78ce8)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Login Now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  final TextEditingController forgotPwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Brightness brightness = Theme.of(context).brightness;


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
                        Text('Forgot Password',
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
                        Text('Enter your email to reset your password',
                          style: TextStyle(
                              fontSize: 13,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:

                        MyTextField(title: 'Email', controller: forgotPwdController, myicon: Icons.email, obscure: false,)
                    ),
                    // SizedBox(height: 16.0),

                    // MyElevatedButton(title: 'Reset Password',),

                    GestureDetector(
                      onTap: (){


                        _showMyDialog(context);
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
                            'Reset Password',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
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
  }
}
