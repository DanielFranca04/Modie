import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_account_screen_widget.dart' show CreateAccountScreenWidget;
import 'package:flutter/material.dart';

class CreateAccountScreenModel
    extends FlutterFlowModel<CreateAccountScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  String? _emailTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'vxipsy8v' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for PasswordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  String? _passwordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'kd1iwao9' /* Field is required */,
      );
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // State field(s) for ConfirmPasswordTextField widget.
  FocusNode? confirmPasswordTextFieldFocusNode;
  TextEditingController? confirmPasswordTextFieldTextController;
  late bool confirmPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextFieldTextControllerValidator;
  String? _confirmPasswordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '638w6gzl' /* Field is required */,
      );
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // State field(s) for InvitationCodeTextField widget.
  FocusNode? invitationCodeTextFieldFocusNode;
  TextEditingController? invitationCodeTextFieldTextController;
  String? Function(BuildContext, String?)?
      invitationCodeTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<ProfileRow>? outputemail;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<InvitationRow>? codevalidator;

  @override
  void initState(BuildContext context) {
    emailTextFieldTextControllerValidator =
        _emailTextFieldTextControllerValidator;
    passwordTextFieldVisibility = false;
    passwordTextFieldTextControllerValidator =
        _passwordTextFieldTextControllerValidator;
    confirmPasswordTextFieldVisibility = false;
    confirmPasswordTextFieldTextControllerValidator =
        _confirmPasswordTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();

    confirmPasswordTextFieldFocusNode?.dispose();
    confirmPasswordTextFieldTextController?.dispose();

    invitationCodeTextFieldFocusNode?.dispose();
    invitationCodeTextFieldTextController?.dispose();
  }
}
