import 'package:flutter/material.dart';
import 'package:hotelsapp/main.dart';
import 'package:hotelsapp/widgets/calendar_page.dart';


class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Container(
      //height: 200,
      color: Colors.grey[200],
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                padding: const EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius:  4,
                      offset: Offset(0,3),
                    ),
                  ]
                ),
                child: const TextField(
                  decoration: InputDecoration(
                  hintText: 'London',
                  contentPadding: EdgeInsets.all(10),
                  border: InputBorder.none,
                )
                ),
              ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  
                  boxShadow: [
                    BoxShadow(
                    color: Colors.green,
                    blurRadius: 4,
                    offset: Offset(0,4),
                  ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(25),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return CalendarPage();
                    } ));
                  },
                  child: const Icon(
                    Icons.search,
                    size: 26,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    primary: d_green,
                  )
                )
              )
            ],
          ),
          // const SizedBox(height: 50),
          Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: const [
              Text("Choose date"),
              Text("12 Dec - 22 Dec"),
            ]
          )
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Number of rooms"),
              Text("1 Room - 2 Adults"),
            ]
          )
        )
      ],
      )
      ])
    );
  }
}