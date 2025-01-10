import '/backend/api_requests/api_calls.dart';
import '/components/img_comp_widget.dart';
import '/components/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'shop_screen_products_widget.dart' show ShopScreenProductsWidget;
import 'package:flutter/material.dart';

class ShopScreenProductsModel
    extends FlutterFlowModel<ShopScreenProductsWidget> {
  ///  Local state fields for this page.

  int? filter = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetMetaobjectsColor)] action in ShopScreenProducts widget.
  ApiCallResponse? coloroutput;
  // Stores action output result for [Custom Action - checkColor] action in ShopScreenProducts widget.
  bool? colorValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Models for ImgComp dynamic component.
  late FlutterFlowDynamicModels<ImgCompModel> imgCompModels;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    imgCompModels = FlutterFlowDynamicModels(() => ImgCompModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    imgCompModels.dispose();
    navbarModel.dispose();
  }
}
