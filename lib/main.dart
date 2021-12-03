import 'package:flutter/material.dart';
import 'package:hotelsapp/widgets/my_app_bar.dart';
import 'package:hotelsapp/widgets/search_section.dart';
import 'package:hotelsapp/widgets/hotel_section.dart';
import 'package:hotelsapp/widgets/calendar_page.dart';


const d_green = Color(0xFF54D3C2);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hotel Booking',
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
      child: Column(
        children: [
          SearchSection(),
          HotelSection(),
        ],
      ))
      
    );
  }
}
