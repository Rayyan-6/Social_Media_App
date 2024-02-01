import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PaymentCardsCarousel extends StatefulWidget {
  const PaymentCardsCarousel({super.key});

  @override
  State<PaymentCardsCarousel> createState() => _PaymentCardsCarouselState();
}

class _PaymentCardsCarouselState extends State<PaymentCardsCarousel> {
  @override
  Widget build(BuildContext context) {
    return

      CarouselSlider(
        options: CarouselOptions(
          height: 300.0,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: false,
          reverse: false,
          // enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        items: [
          Container(
            width: (MediaQuery.of(context).size.width)/1,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            // color: Colors.red,
            child: Center(child:

            // Text('Item 1', style: TextStyle(color: Colors.white))
            Image(
              image: AssetImage('assets/visaCard.png'),
              fit: BoxFit.fill,
            ),
            ),
          ),
          Container(
            width: (MediaQuery.of(context).size.width)/1,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            // color: Colors.blue,
            child: Center(child:

            // Text('Item 2', style: TextStyle(color: Colors.white))
            Image(
              image: AssetImage('assets/visaCard.png'),
              fit: BoxFit.fill,

            ),
            ),
          ),
          Container(
            width: (MediaQuery.of(context).size.width)/1,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            // color: Colors.green,
            child: Center(child:

            // Text('Item 3', style: TextStyle(color: Colors.white))
            Image(
              image: AssetImage('assets/addCard.png'),
              fit: BoxFit.fill,
            ),
            ),
          ),
        ],
      );
  }
}
