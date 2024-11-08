import '/backend/supabase/supabase.dart';
import '/components/f_a_qs_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'f_a_qs_widget.dart' show FAQsWidget;
import 'package:flutter/material.dart';

class FAQsModel extends FlutterFlowModel<FAQsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in FAQs widget.
  List<FaqsOptionsRow>? faqoutput;
  // Models for FAQsComp dynamic component.
  late FlutterFlowDynamicModels<FAQsCompModel> fAQsCompModels;

  /// Query cache managers for this widget.

  final _faqsopsManager = FutureRequestManager<List<FaqsOptionsRow>>();
  Future<List<FaqsOptionsRow>> faqsops({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<FaqsOptionsRow>> Function() requestFn,
  }) =>
      _faqsopsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearFaqsopsCache() => _faqsopsManager.clear();
  void clearFaqsopsCacheKey(String? uniqueKey) =>
      _faqsopsManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    fAQsCompModels = FlutterFlowDynamicModels(() => FAQsCompModel());
  }

  @override
  void dispose() {
    fAQsCompModels.dispose();

    /// Dispose query cache managers for this widget.

    clearFaqsopsCache();
  }
}
