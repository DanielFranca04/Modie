import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'quiz_component_model.dart';
export 'quiz_component_model.dart';

class QuizComponentWidget extends StatefulWidget {
  const QuizComponentWidget({
    super.key,
    required this.image,
    required this.numb,
    required this.name,
  });

  final String? image;
  final int? numb;
  final String? name;

  @override
  State<QuizComponentWidget> createState() => _QuizComponentWidgetState();
}

class _QuizComponentWidgetState extends State<QuizComponentWidget> {
  late QuizComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 108.67,
      height: 230.0,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '0${valueOrDefault<String>(
              functions.add1(widget.numb),
              '- -',
            )}',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  color: FFAppState()
                          .quiz[FFAppState().i]
                          .options
                          .contains(widget.name)
                      ? FlutterFlowTheme.of(context).m500
                      : FlutterFlowTheme.of(context).n950,
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              if (FFAppState()
                  .quiz[FFAppState().i]
                  .options
                  .contains(widget.name)) {
                FFAppState().updateQuizAtIndex(
                  FFAppState().i,
                  (e) => e
                    ..updateOptions(
                      (e) => e.remove(widget.name),
                    ),
                );
                _model.updatePage(() {});
              } else {
                FFAppState().updateQuizAtIndex(
                  FFAppState().i,
                  (e) => e
                    ..updateOptions(
                      (e) => e.add(widget.name!),
                    ),
                );
                _model.updatePage(() {});
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: FFAppState()
                        .quiz[FFAppState().i]
                        .options
                        .contains(widget.name)
                    ? FlutterFlowTheme.of(context).m500
                    : const Color(0x0D000000),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.network(
                    widget.image!,
                    width: 107.0,
                    height: 163.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
              valueOrDefault<String>(
                widget.name,
                '- - ',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    color: FFAppState()
                            .quiz[FFAppState().i]
                            .options
                            .contains(widget.name)
                        ? FlutterFlowTheme.of(context).m500
                        : FlutterFlowTheme.of(context).n900,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
