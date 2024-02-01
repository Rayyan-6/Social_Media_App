import 'package:flutter/material.dart';

class SubscriptionPrice extends StatefulWidget {
  const SubscriptionPrice({super.key});

  @override
  State<SubscriptionPrice> createState() => _SubscriptionPriceState();
}

class _SubscriptionPriceState extends State<SubscriptionPrice> {

  final TextEditingController subPriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Brightness brightness = Theme.of(context).brightness;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Subscription Price'
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: Text('Subscription price',style: TextStyle(color:  brightness == Brightness.light ?  Colors.grey:Colors.white,fontSize: 20),),
              ),
            ],
          ),


          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color:  brightness == Brightness.light ?  Colors.white:Color(0xFF240b61),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 4.0,
                    spreadRadius: 4.0,
                  ),
                ],
              ),
              width: (MediaQuery.of(context).size.width)/1.2,
              height: 50 ,
              child: TextFormField(
                controller: subPriceController,
                decoration: InputDecoration(
                  // contentPadding: EdgeInsets.symmetric(vertical: 10.0),

                  hintText: 'Subscription Price',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                ),
                // style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
        ],


      ),
    );
  }
}
