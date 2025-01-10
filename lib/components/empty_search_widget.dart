import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_search_model.dart';
export 'empty_search_model.dart';

class EmptySearchWidget extends StatefulWidget {
  const EmptySearchWidget({super.key});

  @override
  State<EmptySearchWidget> createState() => _EmptySearchWidgetState();
}

class _EmptySearchWidgetState extends State<EmptySearchWidget> {
  late EmptySearchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptySearchModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.0,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 100.0,
            height: 30.0,
            decoration: const BoxDecoration(),
          ),
          Text(
            FFLocalizations.of(context).getText(
              '15u94v52' /* NO PRODUCT WAS FOUND. */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).n300,
                  fontSize: 10.0,
                  letterSpacing: 1.0,
                  lineHeight: 2.0,
                ),
          ),
          Container(
            width: 100.0,
            height: 15.0,
            decoration: const BoxDecoration(),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'e63ji2u5' /* PLEASE TRY SEARCHING WITH A DI... */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).n300,
                  fontSize: 10.0,
                  letterSpacing: 1.0,
                  lineHeight: 2.0,
                ),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'bi8z5gw1' /* DESCRIBE WHAT YOU'RE LOOKING F... */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).n300,
                  fontSize: 10.0,
                  letterSpacing: 1.0,
                ),
          ),
        ],
      ),
    );
  }
}
