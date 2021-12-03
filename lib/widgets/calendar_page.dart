import 'package:flutter/material.dart';
import 'package:hotelsapp/widgets/calendar_range.dart';
import 'package:hotelsapp/widgets/period_section.dart';
import 'package:hotelsapp/widgets/validate_booking_section.dart';
import 'package:table_calendar/table_calendar.dart';

// const d_green = Color(0xFF54D3C2);

DateTime kNow = DateTime.now();
DateTime kFirstDay = DateTime(kNow.year, kNow.month - 3, kNow.day);
DateTime kLastDay = DateTime(kNow.year, kNow.month + 3, kNow.day);

class CalendarPage extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCalendarAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PeriodSection(),
            CalendarRange(),
            ValidateBookingSection(),
          ],
        ),
      )
    );
  }
}

class MyCalendarAppBar extends StatelessWidget implements PreferredSizeWidget{

  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
        color: Colors.grey[800],
        size: 20,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: Colors.white,
    );
    
  }
}