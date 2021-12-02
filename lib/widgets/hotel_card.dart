import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        color: Colors.white,
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
         ),
         Container(
           margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
           Text(hotelData['title'],
           style: GoogleFonts.nunito(
             fontSize: 10,
             fontWeight: FontWeight.w800,
           ),
           ),
          
           Text( '\$' + hotelData['price'],
           style: GoogleFonts.nunito(
             fontSize: 18,
             fontWeight: FontWeight.w800,
           )
           ),

         ],
         ),
         ),
         Container(
           margin: const EdgeInsets.symmetric(horizontal: 10),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(
              hotelData['place'],
              style: GoogleFonts.nunito(
              fontSize: 14,
              color: Colors.grey[500],
              fontWeight: FontWeight.w800,
            ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.place,
                  color: d_green,
                  size: 14.0
                ),
                Text(hotelData['distance'].toString() + 'km to city',
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w400,
                ),
                )
              ],
            )
            ]
           )
         )
        ],
      ),
      


    );
  }
}