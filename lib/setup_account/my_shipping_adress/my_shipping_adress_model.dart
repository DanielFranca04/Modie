import '/backend/supabase/supabase.dart';
import '/components/address/address_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'my_shipping_adress_widget.dart' show MyShippingAdressWidget;
import 'package:flutter/material.dart';

class MyShippingAdressModel extends FlutterFlowModel<MyShippingAdressWidget> {
  ///  State fields for stateful widgets in this page.

  Completer<List<AddressRow>>? requestCompleter;
  // Models for Address dynamic component.
  late FlutterFlowDynamicModels<AddressModel> addressModels;

  @override
  void initState(BuildContext context) {
    addressModels = FlutterFlowDynamicModels(() => AddressModel());
  }

  @override
  void dispose() {
    addressModels.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
