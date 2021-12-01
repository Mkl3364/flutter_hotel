import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelsapp/widgets/hotel_card.dart';


class HotelSection extends StatelessWidget {
  HotelSection({Key? key}) : super(key: key);

  final List hotelList = [
    {
      'title' : 'Grand Royal Hotel',
      'place' : 'Webley, London',
      'distance' : 2,
      'review' : 36,
      'picture' : 'images/hotel_1.png',
      'price' : '100',
    },
    {
      'title' : 'Intercontinental Hotel',
      'place' : 'London',
      'distance' : 3,
      'review' : 40,
      'picture' : 'images/hotel_2.png',
      'price' : '200',
    },
    {
      'title' : 'Big Burger Hotel',
      'place' : 'Hambourg, Germany',
      'distance' : 10,
      'review' : 10,
      'picture' : 'images/hotel_3.png',
      'price' : '70',
    },
    {
      'title' : 'Nice Nap Hotel',
      'place' : 'bedtime, California',
      'distance' : 4,
      'review' : 50,
      'picture' : 'images/hotel_4.png',
      'price' : '150',
    },
  ];

  @override

  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            // color: Colors.red,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '550 hotels found',
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Filters',
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_list_outlined),
                    )
                  ],
                )
              ],
            )
          ),
          Column(
            children: hotelList.map((hotel) {
              return HotelCard(hotel);
              }).toList(),
          ),
        ],)
    );
  }
}
