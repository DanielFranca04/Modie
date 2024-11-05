import '/flutter_flow/flutter_flow_util.dart';
import 'change_password_screen_widget.dart' show ChangePasswordScreenWidget;
import 'package:flutter/material.dart';

class ChangePasswordScreenModel
    extends FlutterFlowModel<ChangePasswordScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NewPasswordTextField widget.
  FocusNode? newPasswordTextFieldFocusNode;
  TextEditingController? newPasswordTextFieldTextController;
  late bool newPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      newPasswordTextFieldTextControllerValidator;
  String? _newPasswordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'w73rumy6' /* Field is required */,
      );
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // State field(s) for ConfirmNewPasswordTextField widget.
  FocusNode? confirmNewPasswordTextFieldFocusNode;
  TextEditingController? confirmNewPasswordTextFieldTextController;
  late bool confirmNewPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmNewPasswordTextFieldTextControllerValidator;
  String? _confirmNewPasswordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hq99wd28' /* Field is required */,
      );
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // Stores action output result for [Custom Action - resetPassword] action in Container widget.
  String? error;

  @override
  void initState(BuildContext context) {
    newPasswordTextFieldVisibility = false;
    newPasswordTextFieldTextControllerValidator =
        _newPasswordTextFieldTextControllerValidator;
    confirmNewPasswordTextFieldVisibility = false;
    confirmNewPasswordTextFieldTextControllerValidator =
        _confirmNewPasswordTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    newPasswordTextFieldFocusNode?.dispose();
    newPasswordTextFieldTextController?.dispose();

    confirmNewPasswordTextFieldFocusNode?.dispose();
    confirmNewPasswordTextFieldTextController?.dispose();
  }
}
