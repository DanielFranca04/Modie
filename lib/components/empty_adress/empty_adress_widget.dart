import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_adress_model.dart';
export 'empty_adress_model.dart';

class EmptyAdressWidget extends StatefulWidget {
  const EmptyAdressWidget({super.key});

  @override
  State<EmptyAdressWidget> createState() => _EmptyAdressWidgetState();
}

class _EmptyAdressWidgetState extends State<EmptyAdressWidget> {
  late EmptyAdressModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyAdressModel());
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
              'assets/images/map.png',
              width: 64.0,
              height: 64.0,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            FFLocalizations.of(context).getText(
              '8bi7w1oj' /* NO ADDRESS */,
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
                'httfox4a' /* You can view and manage the ad... */,
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
