import 'package:flutter/material.dart';

import '../main.dart';

class HotelCard extends StatelessWidget {
  final Map hotelData;
  HotelCard(this.hotelData);
  @override 

  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(10),
      height: 230,
      decoration: BoxDecoration(
        //color: Colors.blue,
        borderRadius: const BorderRadius.all(Radius.circular(10)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: const Offset(0,3),
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18)
              ),
              // color: Colors.red,
              image: DecorationImage(image: AssetImage(hotelData['picture']
            ),
            fit: BoxFit.cover,
            ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                  right: -15,
                  child: MaterialButton(
                    color: Colors.white,
                    shape: const CircleBorder(),
                     onPressed: () {},
                     child: const Icon(
                       Icons.favorite_outline_rounded,
                       color: d_green,
                       size: 20,
                     )
                  )
                )
              ],
            )
         )
        ],
      ),
      


    );
  }
}