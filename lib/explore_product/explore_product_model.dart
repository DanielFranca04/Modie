import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/review_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'explore_product_widget.dart' show ExploreProductWidget;
import 'package:flutter/material.dart';

class ExploreProductModel extends FlutterFlowModel<ExploreProductWidget> {
  ///  Local state fields for this page.

  int? filtereview;

  String dropdownval = 'Newest';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in ExploreProduct widget.
  List<ReviewRow>? checkReviews;
  // Stores action output result for [Backend Call - API (GetColorsItem)] action in ExploreProduct widget.
  ApiCallResponse? apiResultte3;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Models for Review dynamic component.
  late FlutterFlowDynamicModels<ReviewModel> reviewModels1;
  // Models for Review dynamic component.
  late FlutterFlowDynamicModels<ReviewModel> reviewModels2;
  // Models for Review dynamic component.
  late FlutterFlowDynamicModels<ReviewModel> reviewModels3;
  // Models for Review dynamic component.
  late FlutterFlowDynamicModels<ReviewModel> reviewModels4;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<CartRow>? checkprod;

  @override
  void initState(BuildContext context) {
    reviewModels1 = FlutterFlowDynamicModels(() => ReviewModel());
    reviewModels2 = FlutterFlowDynamicModels(() => ReviewModel());
    reviewModels3 = FlutterFlowDynamicModels(() => ReviewModel());
    reviewModels4 = FlutterFlowDynamicModels(() => ReviewModel());
  }

  @override
  void dispose() {
    reviewModels1.dispose();
    reviewModels2.dispose();
    reviewModels3.dispose();
    reviewModels4.dispose();
  }
}
