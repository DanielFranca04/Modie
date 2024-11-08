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

import 'dart:convert';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<dynamic> appleSignin() async {
  final supabase = Supabase.instance.client;

  try {
    // Apple ID
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );

    final idToken = credential.identityToken;
    if (idToken == null) {
      throw const AuthException(
        'Could not find ID Token from generated credential.',
      );
    }

    final response = await supabase.auth.signInWithIdToken(
      provider: Provider.apple,
      idToken: idToken,
    );

    final firstName = credential.givenName ?? '';
    final lastName = credential.familyName ?? '';
    final displayName = '$firstName $lastName';

    await supabase.from('auth.users').upsert({
      'id': response.user?.id,
      'display_name': displayName,
    });

    return response.user != null ? response.user : null;
  } catch (e) {
    print('Erro ao autenticar com Apple Sign-In: $e');
    return null;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
