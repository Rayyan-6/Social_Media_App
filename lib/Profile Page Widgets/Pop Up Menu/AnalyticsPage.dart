import 'package:awesome_project/Profile%20Page%20Widgets/Pop%20Up%20Menu/AnalyticsSubContainer.dart';
import 'package:flutter/material.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analytics'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Divider(),
              //for stats info
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60,),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 30),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                gradient: LinearGradient(
                                  colors: [Color(0xFFe7bfef),
                                    Color(0xFFc78ce8)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Last 7 days',style: TextStyle(color: Colors.white,fontSize: 18),),
                                    Icon(Icons.arrow_drop_down_sharp,size: 25,color: Colors.white,)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('1.3M',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                        Text('Post Views',style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  ),
                  // Row(
                  //   children: [
                  //
                  //
                  //   ],
                  // ),

                  Container(
                    width: MediaQuery.of(context).size.width,

                    child: Stack(

                      children:[
                        Container(
                          width: MediaQuery.of(context).size.width,
                        child: Image.asset('assets/Graph.png'),
                      ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 170, 15, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Mon'),
                                  Text('Tue'),
                                  Text('Wed'),
                                  Text('Thu'),
                                  Text('Fri'),
                                  Text('Sat'),
                                  Text('Sun'),
                                ],
                              ),
                            ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Column(
                    children: [
                      AnalyticsSubContainer(title: 'Earnings', graphUrl: 'assets/subGraph1.png', value: '123.2K'),
                      SizedBox(height: 10,),
                      AnalyticsSubContainer(title: 'Subscribers', graphUrl: 'assets/subGraph2.png', value: '82.1K'),
                      SizedBox(height: 10,),
                      AnalyticsSubContainer(title: 'Followers', graphUrl: 'assets/subGraph3.png', value: '8.2M'),

                      SizedBox(height: 15,),
                    ],
                    ),
                  ),
            ],
          ),
      ),

    );
  }
}
