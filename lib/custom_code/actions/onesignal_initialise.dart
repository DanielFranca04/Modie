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

import 'package:onesignal_flutter/onesignal_flutter.dart';

Future onesignalInitialise() async {
  final String oneSignalAppId = isAndroid
      ? "71ceb48d-a6ba-4c7a-a1d1-721df6397f30"
      : "MIGTAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBHkwdwIBAQQgg5NhchUwr5lmHz41uNzp03ZNwsjgXsmAXBKaIkwCBSSgCgYIKoZIzj0DAQehRANCAATMYNXZdkUw+vC0m3O1bb7t9LfUrdvCE35SQV9m3zNmRHyTwCWqVhmPbFNhGkvbIfrctoe4Ay94z4MZkTidUovj";

  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize(oneSignalAppId);
  OneSignal.Notifications.requestPermission(true);
}
