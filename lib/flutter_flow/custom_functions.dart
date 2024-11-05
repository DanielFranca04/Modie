import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

DateTime? stringToDate(String? date) {
  // convert 24/02/2004 for example to date
  if (date == null) {
    return null;
  }

  List<String> parts = date.split('/');
  if (parts.length != 3) {
    return null;
  }

  int day = int.tryParse(parts[0]) ?? 0;
  int month = int.tryParse(parts[1]) ?? 0;
  int year = int.tryParse(parts[2]) ?? 0;

  if (day == 0 || month == 0 || year == 0) {
    return null;
  }

  return DateTime(year, month, day);
}

String? add1(int? numb) {
  if (numb == null) {
    return null;
  } else {
    return (numb + 1).toString();
  }
}

int? getDay(DateTime? date) {
  // Get a date time and return the day
  if (date == null) {
    return null;
  }

  return date.day;
}

String? getMonth(DateTime? date) {
  // if the month is for example 01 return January and like that
  // Get a date time and return the month
  if (date == null) {
    return null;
  }

  switch (date.month) {
    case 01:
      return 'January';
    case 02:
      return 'February';
    case 03:
      return 'March';
    case 04:
      return 'April';
    case 05:
      return 'May';
    case 06:
      return 'June';
    case 07:
      return 'July';
    case 08:
      return 'August';
    case 09:
      return 'September';
    case 10:
      return 'October';
    case 11:
      return 'November';
    case 12:
      return 'December';
    default:
      return null;
  }
}

int? getYear(DateTime? date) {
  // get the year
  // Get a date time and return the year
  if (date == null) {
    return null;
  }

  return date.year;
}

String? dateToString(DateTime? date) {
  // Convert date to string
  // Convert a DateTime object to a string in the format 'yyyy-MM-dd'
  if (date == null) {
    return null;
  }

  return DateFormat('yyyy-MM-dd').format(date);
}
