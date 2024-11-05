import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'f_a_qs_comp_model.dart';
export 'f_a_qs_comp_model.dart';

class FAQsCompWidget extends StatefulWidget {
  const FAQsCompWidget({super.key});

  @override
  State<FAQsCompWidget> createState() => _FAQsCompWidgetState();
}

class _FAQsCompWidgetState extends State<FAQsCompWidget> {
  late FAQsCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FAQsCompModel());
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
      constraints: const BoxConstraints(
        minHeight: 34.0,
        maxHeight: 160.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).n950,
          width: 0.5,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '0w9aph6s' /* Hello WorldHello WorldHello Wo... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: FlutterFlowTheme.of(context).n800,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 8.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).primary,
                  icon: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
