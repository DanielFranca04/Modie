import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_prod_guides_model.dart';
export 'empty_prod_guides_model.dart';

class EmptyProdGuidesWidget extends StatefulWidget {
  const EmptyProdGuidesWidget({super.key});

  @override
  State<EmptyProdGuidesWidget> createState() => _EmptyProdGuidesWidgetState();
}

class _EmptyProdGuidesWidgetState extends State<EmptyProdGuidesWidget> {
  late EmptyProdGuidesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyProdGuidesModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 100.0,
          height: 20.0,
          decoration: const BoxDecoration(),
        ),
        Text(
          FFLocalizations.of(context).getText(
            'hs0kh4dl' /* WE'RE WORKING ON MORE AWESOME ... */,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Montserrat',
                color: FlutterFlowTheme.of(context).n500,
                fontSize: 10.0,
                letterSpacing: 0.0,
              ),
        ),
        Container(
          width: 100.0,
          height: 5.0,
          decoration: const BoxDecoration(),
        ),
        Text(
          FFLocalizations.of(context).getText(
            'h4hwai3j' /* TO INSPIRE YOU WITH OUR PRODUC... */,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Montserrat',
                color: FlutterFlowTheme.of(context).n500,
                fontSize: 10.0,
                letterSpacing: 0.0,
              ),
        ),
        Container(
          width: 100.0,
          height: 5.0,
          decoration: const BoxDecoration(),
        ),
        Text(
          FFLocalizations.of(context).getText(
            'rgk6rlcj' /* CHECK BACK LATER TO SEE WHAT'S... */,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Montserrat',
                color: FlutterFlowTheme.of(context).n500,
                fontSize: 10.0,
                letterSpacing: 0.0,
              ),
        ),
      ],
    );
  }
}
