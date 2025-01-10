import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/navbar/navbar_widget.dart';
import '/components/options/options_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shop_screen_widget.dart' show ShopScreenWidget;
import 'package:flutter/material.dart';

class ShopScreenModel extends FlutterFlowModel<ShopScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Search)] action in TextField widget.
  ApiCallResponse? apiResults61;
  // Stores action output result for [Backend Call - Query Rows] action in Icon widget.
  List<ProductRow>? typeoutput;
  // Model for navbar component.
  late NavbarModel navbarModel;
  // Model for Options component.
  late OptionsModel optionsModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    optionsModel = createModel(context, () => OptionsModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navbarModel.dispose();
    optionsModel.dispose();
  }
}
