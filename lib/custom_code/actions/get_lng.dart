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

Future<String> getLng(String? info) async {
  //   // LatLng(lat: 37.785834, lng: -122.406417)  get the value of lng: (in this case is -122.406417) but without the ) on the end

  if (info == null) {
    return "No information provided";
  }

  int startIndex = info.indexOf("lng: ") + 5;
  int endIndex = info.indexOf(")", startIndex);

  if (startIndex == -1 || endIndex == -1) {
    return "Invalid information format";
  }

  String lngValue = info.substring(startIndex, endIndex);

  return lngValue;
}
