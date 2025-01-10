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
  if (date == null) {
    return null;
  }

  return DateFormat('dd/MM/yyyy').format(date);
}

int? stringtoInt(String? val) {
  // convert a string to int
  try {
    return int.parse(val!);
  } catch (e) {
    return null;
  }
}

bool? checkIndex(int? numb) {
  // Check if the number is a even number, if so return true otherwise false
  if (numb != null) {
    return numb % 2 == 0;
  }
  return null;
}

bool checkColorType(String codeColor) {
  // Create a function that verify if the color is darker, if so return false otherwise return true
  // Convert color code to RGB values
  int r = int.parse(codeColor.substring(1, 3), radix: 16);
  int g = int.parse(codeColor.substring(3, 5), radix: 16);
  int b = int.parse(codeColor.substring(5, 7), radix: 16);

  // Calculate luminance
  double luminance = (0.299 * r + 0.587 * g + 0.114 * b) / 255;

  // Check if color is darker
  if (luminance > 0.5 && codeColor != "#000000") {
    return false;
  } else {
    return true;
  }
}

int? round(double? value) {
  // Round the number if 14.5 returns 15
  if (value != null) {
    return value.round();
  }
  return null;
}
