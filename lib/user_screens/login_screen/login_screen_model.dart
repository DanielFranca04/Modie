import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_screen_widget.dart' show LoginScreenWidget;
import 'package:flutter/material.dart';

class LoginScreenModel extends FlutterFlowModel<LoginScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // State field(s) for PasswordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in GoogleButton widget.
  List<ProfileRow>? outputEmail;
  // Stores action output result for [Backend Call - API (Login)] action in Container widget.
  ApiCallResponse? verifystatus;
  // Stores action output result for [Backend Call - API (ResendOTP)] action in Container widget.
  ApiCallResponse? apiResultdh7;

  @override
  void initState(BuildContext context) {
    passwordTextFieldVisibility = false;
  }

  @override
  void dispose() {
    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();
  }
}
