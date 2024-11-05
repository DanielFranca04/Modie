// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> checkDay(
  int? day,
  String? month,
  int? year,
) async {
  // check if is a valid day

  // Check if day is null or not between 1 and 31
  if (day == null || day < 1 || day > 31) {
    return false;
  }

  // Check if month is null or not a valid month
  if (month == null ||
      ![
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December'
      ].contains(month)) {
    return false;
  }

  // Check if year is null or not a valid year
  if (year == null || year < 0) {
    return false;
  }

  // Check if the day is valid for the given month
  if (month == 'February') {
    if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) {
      return day <= 29;
    } else {
      return day <= 28;
    }
  } else if (['April', 'June', 'September', 'November'].contains(month)) {
    return day <= 30;
  } else {
    return true;
  }
}
