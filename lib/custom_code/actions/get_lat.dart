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

Future<String> getLat(String? info) async {
  // LatLng(lat: 37.785834, lng: -122.406417)  get the value of lat: (in this case is 37,785834)

  if (info == null) {
    return "No information provided";
  }

  List<String> parts = info.split(",");
  if (parts.length < 2) {
    return "Invalid information format";
  }

  String lat = parts[0].split(":")[1].trim();

  return lat;
}
