import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'return_select_widget.dart' show ReturnSelectWidget;
import 'package:flutter/material.dart';

class ReturnSelectModel extends FlutterFlowModel<ReturnSelectWidget> {
  ///  Local state fields for this page.

  bool state = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
