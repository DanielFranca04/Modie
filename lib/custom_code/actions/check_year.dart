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

Future<bool> checkYear(int? year) async {
  // validate if is a valid year and cannot be after the year now
  if (year == null) {
    return false;
  }

  int currentYear = DateTime.now().year;

  if (year <= currentYear) {
    return true;
  } else {
    return false;
  }
}
