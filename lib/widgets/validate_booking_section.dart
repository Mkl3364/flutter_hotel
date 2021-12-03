import 'package:flutter/material.dart';

const d_green = Color(0xFF54D3C2);

class ValidateBookingSection extends StatelessWidget {

  final selectedRadio = 1;

  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          value: selectedRadio,
          activeColor: d_green,
          groupValue: selectedRadio,
          selected: true,
          title: const Text(
            "Flexible dates",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          onChanged: null,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: ElevatedButton(
            child: const Text(
              'Apply',
              style: TextStyle(fontSize: 17),
            ),
            style: ElevatedButton.styleFrom(
              primary: d_green,
              padding: const EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () {
              const Text('Apply booking');
              Navigator.pop(context);
            },
          )
        )
      ],
    );
  }
}