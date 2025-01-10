import '/backend/supabase/supabase.dart';
import '/components/prod_reviews_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'explore_reviews_widget.dart' show ExploreReviewsWidget;
import 'package:flutter/material.dart';

class ExploreReviewsModel extends FlutterFlowModel<ExploreReviewsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in ExploreReviews widget.
  List<ProductRow>? prodcount;
  // Models for ProdReviewsComp dynamic component.
  late FlutterFlowDynamicModels<ProdReviewsCompModel> prodReviewsCompModels;

  @override
  void initState(BuildContext context) {
    prodReviewsCompModels =
        FlutterFlowDynamicModels(() => ProdReviewsCompModel());
  }

  @override
  void dispose() {
    prodReviewsCompModels.dispose();
  }
}
