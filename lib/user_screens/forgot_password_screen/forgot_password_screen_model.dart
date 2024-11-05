import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_password_screen_widget.dart' show ForgotPasswordScreenWidget;
import 'package:flutter/material.dart';

class ForgotPasswordScreenModel
    extends FlutterFlowModel<ForgotPasswordScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailTextFieldForgot widget.
  FocusNode? emailTextFieldForgotFocusNode;
  TextEditingController? emailTextFieldForgotTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldForgotTextControllerValidator;
  String? _emailTextFieldForgotTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'e17jks9g' /* Field is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<ProfileRow>? outputEmail;

  @override
  void initState(BuildContext context) {
    emailTextFieldForgotTextControllerValidator =
        _emailTextFieldForgotTextControllerValidator;
  }

  @override
  void dispose() {
    emailTextFieldForgotFocusNode?.dispose();
    emailTextFieldForgotTextController?.dispose();
  }
}
