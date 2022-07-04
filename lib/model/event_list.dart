import 'package:flutter/material.dart';

class EventList {
  final String date;
  final String month;
  final String caption;
  final String city;
  final String provincecode;
  final int join;
  final String description;
  final String image;
  final int remianing;
  final String actor;
  EventList(
    this.date,
    this.month,
    this.caption,
    this.city,
    this.provincecode,
    this.join,
    this.description,
    this.image,
    this.remianing,
    this.actor,
  );
}

List<EventList> elist = [
  EventList(
      "8",
      "June",
      "Surakarta \nClean City \nTogether",
      "Surakarta",
      "INA",
      43,
      " Hi! This is tanzeel ur rehman, We wait you to join with us.We need you to save our city stay clean & beautiful.Let join Surkartans",
      "assets/original.png",
      40,
      "George"),
  EventList(
      "10",
      "May",
      "Concert \nAtif Aslam \nWeekend",
      "Karachi",
      "SIN",
      30,
      " Hi! This is tanzeel ur rehman, We wait you to join with us.We need you to save our city stay clean & beautiful.Let join Surkartans",
      "assets/istockphoto-479977238-612x612.png",
      27,
      "Linda"),
  EventList(
      "29",
      "April",
      "Movie \nMarvel Movie \nTogether",
      "Lahore",
      "PUN",
      10,
      " Hi! This is tanzeel ur rehman, We wait you to join with us.We need you to save our city stay clean & beautiful.Let join Surkartans",
      "assets/256-2569980_movie-theater-inside.png",
      7,
      "Saleem"),
];
