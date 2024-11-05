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

Future<bool> usernameValidator(String? username) async {
  // check a username that only can contains letters, numbers and . and _, if have other special caracters ou spaces has to return false

  if (username == null) {
    return false;
  }

  RegExp regex = RegExp(r'^[a-zA-Z0-9._]+$');
  if (!regex.hasMatch(username)) {
    return false;
  }

  return true;
}
