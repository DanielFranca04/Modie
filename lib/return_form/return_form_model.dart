import '/flutter_flow/flutter_flow_util.dart';
import 'return_form_widget.dart' show ReturnFormWidget;
import 'package:flutter/material.dart';

class ReturnFormModel extends FlutterFlowModel<ReturnFormWidget> {
  ///  Local state fields for this page.

  String? value;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // State field(s) for Checkbox widget.
  bool? checkboxValue8;
  // State field(s) for Checkbox widget.
  bool? checkboxValue9;
  // State field(s) for Checkbox widget.
  bool? checkboxValue10;
  // State field(s) for AboutField widget.
  FocusNode? aboutFieldFocusNode;
  TextEditingController? aboutFieldTextController;
  String? Function(BuildContext, String?)? aboutFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    aboutFieldFocusNode?.dispose();
    aboutFieldTextController?.dispose();
  }
}
