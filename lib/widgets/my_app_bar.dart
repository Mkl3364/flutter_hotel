import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelsapp/pages/map.dart';


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Explore', style: GoogleFonts.nunito(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.w800
      )),
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.favorite_outline_rounded,
          color: Colors.grey[800],
          size: 20,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.place,
          color: Colors.grey[800],
          size: 20,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Map();
            }));
          },
        )
      ],
      centerTitle: true,
    );
  }
}