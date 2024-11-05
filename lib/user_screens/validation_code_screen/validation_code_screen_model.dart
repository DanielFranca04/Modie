import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'validation_code_screen_widget.dart' show ValidationCodeScreenWidget;
import 'package:flutter/material.dart';

class ValidationCodeScreenModel
    extends FlutterFlowModel<ValidationCodeScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CodeTextField widget.
  FocusNode? codeTextFieldFocusNode;
  TextEditingController? codeTextFieldTextController;
  String? Function(BuildContext, String?)? codeTextFieldTextControllerValidator;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 120000;
  int timerMilliseconds = 120000;
  String timerValue = StopWatchTimer.getDisplayTime(
    120000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Custom Action - verifyEmailWithToken] action in Container widget.
  bool? isSuccessful;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    codeTextFieldFocusNode?.dispose();
    codeTextFieldTextController?.dispose();

    timerController.dispose();
  }
}
