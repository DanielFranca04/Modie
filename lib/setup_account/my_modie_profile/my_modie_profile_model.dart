import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_modie_profile_widget.dart' show MyModieProfileWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MyModieProfileModel extends FlutterFlowModel<MyModieProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in MyModie_Profile widget.
  List<ProfileRow>? useroutput;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  final textFieldMask4 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for AboutField widget.
  FocusNode? aboutFieldFocusNode;
  TextEditingController? aboutFieldTextController;
  String? Function(BuildContext, String?)? aboutFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<ProfileRow>? checkUsername;
  // Stores action output result for [Custom Action - convertDate] action in Container widget.
  String? datValidator;
  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    aboutFieldFocusNode?.dispose();
    aboutFieldTextController?.dispose();
  }
}
