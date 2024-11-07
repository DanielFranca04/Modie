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
    // Obtém o credential do Apple ID
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

    // Tenta logar no Supabase usando o token da Apple
    final response = await supabase.auth.signInWithIdToken(
      provider: Provider.apple,
      idToken: idToken,
    );

    // Se o login foi bem-sucedido, atualiza o perfil do usuário
    final firstName = credential.givenName ?? '';
    final lastName = credential.familyName ?? '';
    final displayName = '$firstName $lastName';

    await supabase.from('auth.users').upsert({
      'id': response
          .user?.id, // garante que o usuário seja atualizado corretamente
      'display_name': displayName,
    });

    // Retorna o objeto de resposta ao FlutterFlow (deve ser um valor não-null para continuidade)
    return response.user != null ? response.user : null;
  } catch (e) {
    print('Erro ao autenticar com Apple Sign-In: $e');
    return null; // Retorna null em caso de erro, impedindo a navegação no FlutterFlow
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
