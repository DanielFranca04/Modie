import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'setup_profile_screen_widget.dart' show SetupProfileScreenWidget;
import 'package:flutter/material.dart';

class SetupProfileScreenModel
    extends FlutterFlowModel<SetupProfileScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ovca9uej' /* Field is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Custom Action - usernameValidator] action in Container widget.
  bool? validatorusername;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<ProfileRow>? usernameValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<ProfileRow>? usernameValidatorUser;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
