import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_card_model.dart';
export 'empty_card_model.dart';

class EmptyCardWidget extends StatefulWidget {
  const EmptyCardWidget({super.key});

  @override
  State<EmptyCardWidget> createState() => _EmptyCardWidgetState();
}

class _EmptyCardWidgetState extends State<EmptyCardWidget> {
  late EmptyCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyCardModel());
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
      height: double.infinity,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: Image.asset(
              'assets/images/card.png',
              width: 64.0,
              height: 64.0,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            FFLocalizations.of(context).getText(
              '47b7lodo' /* NO CARDS */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'PP Hatton',
                  color: FlutterFlowTheme.of(context).m500,
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'zf9qsroe' /* You can view and manage the ca... */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    color: FlutterFlowTheme.of(context).n950,
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ].divide(const SizedBox(height: 12.0)),
      ),
    );
  }
}
