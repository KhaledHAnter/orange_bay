import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookingTimeModel {
  final String time;
  final IconData icon;

  BookingTimeModel({
    required this.time,
    required this.icon,
  });
}

List<BookingTimeModel> bookingTime = [
  BookingTimeModel(time: '20 Sep 2023', icon: Icons.calendar_today),
  BookingTimeModel(time: '09:00 AM', icon: FontAwesomeIcons.clock),
];
