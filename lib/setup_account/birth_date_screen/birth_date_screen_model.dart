import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'birth_date_screen_widget.dart' show BirthDateScreenWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BirthDateScreenModel extends FlutterFlowModel<BirthDateScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  final textFieldMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - convertDate] action in Container widget.
  String? datValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<ProfileRow>? date;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
