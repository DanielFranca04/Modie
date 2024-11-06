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

import 'package:app_tracking_transparency/app_tracking_transparency.dart';

Future<bool> solicitarPermissaoTracking() async {
  // Aguarde a inicialização para evitar erros.
  await AppTrackingTransparency.requestTrackingAuthorization();

  // Verifique o status atual da permissão
  final trackingStatus =
      await AppTrackingTransparency.trackingAuthorizationStatus;
  if (trackingStatus == TrackingStatus.authorized) {
    return true;
  } else {
    return false;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
