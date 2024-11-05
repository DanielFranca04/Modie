import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_modie_widget.dart' show MyModieWidget;
import 'package:flutter/material.dart';

class MyModieModel extends FlutterFlowModel<MyModieWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Row widget.
  List<QuizRow>? quizout;
  // Stores action output result for [Backend Call - Query Rows] action in Row widget.
  List<QuizResultsRow>? optionsoutput;
  // Stores action output result for [Backend Call - Query Rows] action in Row widget.
  List<QuizRow>? quizoutp;
  // Stores action output result for [Backend Call - Query Rows] action in Row widget.
  List<QuizResultsRow>? optionsoutpu;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
