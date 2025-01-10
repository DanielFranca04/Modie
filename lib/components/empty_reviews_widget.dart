import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_reviews_model.dart';
export 'empty_reviews_model.dart';

class EmptyReviewsWidget extends StatefulWidget {
  const EmptyReviewsWidget({super.key});

  @override
  State<EmptyReviewsWidget> createState() => _EmptyReviewsWidgetState();
}

class _EmptyReviewsWidgetState extends State<EmptyReviewsWidget> {
  late EmptyReviewsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyReviewsModel());
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
      height: 150.0,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 100.0,
            height: 10.0,
            decoration: const BoxDecoration(),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'cqg8y1ys' /* NO REVIEWS YET. DISCOVER IT,  ... */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).n500,
                  fontSize: 10.0,
                  letterSpacing: 1.0,
                  lineHeight: 2.0,
                ),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'acx8czjj' /* OTHERS WHAT YOU THINK! */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).n500,
                  fontSize: 10.0,
                  letterSpacing: 1.0,
                  lineHeight: 2.0,
                ),
          ),
        ],
      ),
    );
  }
}
