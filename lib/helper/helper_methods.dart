// return a formatted data as a string

import 'package:cloud_firestore/cloud_firestore.dart';

String formatDate(Timestamp timestamp) {
  //Timestamp is the object we retrieve from firebase
  // so to display it, lets convert it to a string
  DateTime dateTime = timestamp.toDate();

  // get year
  String year = dateTime.year.toString();
  // get get month
  String month = dateTime.month.toString();
  // get day
  String day = dateTime.day.toString();
  // get hour
  String hour = dateTime.hour.toString().padLeft(2, '0');
  // get minute
  String minute = dateTime.minute.toString().padLeft(2, '0');
  //final formatted date
  String formattedData = '$year/$month/$day - $hour : $minute';
  return formattedData;
}

String chatMessageDate(Timestamp timestamp) {
  //Timestamp is the object we retrieve from firebase
  // so to display it, lets convert it to a string
  DateTime dateTime = timestamp.toDate();
  // get hour
  String hour = dateTime.hour.toString().padLeft(2, '0');
  // get minute
  String minute = dateTime.minute.toString().padLeft(2, '0');
  //final formatted date
  String formattedData = '$hour : $minute';
  return formattedData;
}
