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

import 'package:intl/intl.dart';

Future<String> convertDate(String? date) async {
  // Verificar se a data é nula
  if (date == null) {
    return Future.value('Invalid date');
  }

  // Separar os componentes da data
  List<String> parts = date.split('/');

  // Verificar se o formato da data é correto (dia/mês/ano)
  if (parts.length != 3) {
    return Future.value('Invalid date format');
  }

  // Converter os valores para inteiros (dia, mês, ano)
  int day = int.tryParse(parts[0]) ?? 0;
  int month = int.tryParse(parts[1]) ?? 0;
  int year = int.tryParse(parts[2]) ?? 0;

  // Verificar se dia, mês ou ano são inválidos
  if (day == 0 || month == 0 || year == 0) {
    return Future.value('Invalid date');
  }

  // Verificar se o mês está no intervalo permitido (1-12)
  if (month < 1 || month > 12) {
    return Future.value('Invalid month');
  }

  // Verificar se o dia é válido para o mês específico
  if (day > _daysInMonth(month, year)) {
    return Future.value('Invalid day for the given month');
  }

  // Verificar se a data não é futura
  DateTime inputDate = DateTime(year, month, day);
  DateTime today = DateTime.now();
  if (inputDate.isAfter(today)) {
    return Future.value('Date cannot be in the future');
  }

  // Se todas as validações passaram, formatar a data como "yyyy-MM-dd"
  String formattedDate = DateFormat('dd-MM-yyyy').format(inputDate);
  return Future.value(formattedDate);
}

// Função auxiliar para verificar o número de dias em um mês
int _daysInMonth(int month, int year) {
  if (month == 2) {
    // Fevereiro: Verificar ano bissexto
    if (_isLeapYear(year)) {
      return 29;
    } else {
      return 28;
    }
  }

  // Meses com 31 dias
  if (month == 1 ||
      month == 3 ||
      month == 5 ||
      month == 7 ||
      month == 8 ||
      month == 10 ||
      month == 12) {
    return 31;
  }

  // Meses com 30 dias
  return 30;
}

// Função auxiliar para verificar se é um ano bissexto
bool _isLeapYear(int year) {
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        return true;
      }
      return false;
    }
    return true;
  }
  return false;
}
