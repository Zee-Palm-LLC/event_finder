import 'package:flutter/material.dart';

class ListTileModel {
  final int date;
  final String month;
  final String title;
  final String duration;
  final String city;
  final String provincecode;
  ListTileModel(this.date, this.month, this.title, this.duration, this.city,
      this.provincecode);
}

List<ListTileModel> listtile = [
  ListTileModel(12, "June", "Volunteer Solosup", "9:00 AM to 03:00 PM",
      "Surakarta", "INA"),
  ListTileModel(
      10, "May", "Volunteer Foodsup", "10:00 AM to 06:00 PM", "Karachi", "SIN"),
  ListTileModel(
      12, "June", "Volunteer Goodup", "5:00 PM to 09:00 PM", "Lahore", "PUN"),
];
