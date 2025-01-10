import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'request_quiz_model.dart';
export 'request_quiz_model.dart';

class RequestQuizWidget extends StatefulWidget {
  const RequestQuizWidget({
    super.key,
    required this.type,
  });

  final String? type;

  @override
  State<RequestQuizWidget> createState() => _RequestQuizWidgetState();
}

class _RequestQuizWidgetState extends State<RequestQuizWidget>
    with TickerProviderStateMixin {
  late RequestQuizModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequestQuizModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 256.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).m200,
          border: Border.all(
            color: FlutterFlowTheme.of(context).n950,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'bvgdpb9e' /* WOULD YOU LIKE A CUSTOM QUIZ T... */,
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'PP Hatton',
                      color: FlutterFlowTheme.of(context).n950,
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            Container(
              width: 10.0,
              height: 10.0,
              decoration: const BoxDecoration(),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: RichText(
                textScaler: MediaQuery.of(context).textScaler,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: FFLocalizations.of(context).getText(
                        'dzqw4kb1' /* We've got you covered! Just an... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Montserrat',
                            color: FlutterFlowTheme.of(context).n900,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    TextSpan(
                      text: FFLocalizations.of(context).getText(
                        '5jha74x6' /* 4 */,
                      ),
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        color: FlutterFlowTheme.of(context).n900,
                        fontSize: 12.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: FFLocalizations.of(context).getText(
                        '8dp7u6xe' /*  quick questions and we'll hel... */,
                      ),
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        color: FlutterFlowTheme.of(context).n900,
                        fontSize: 12.0,
                      ),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 10.0,
              height: 10.0,
              decoration: const BoxDecoration(),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  _model.quizout = await QuizTable().queryRows(
                    queryFn: (q) => q.eqOrNull(
                      'type',
                      widget.type,
                    ),
                  );
                  while (FFAppState().i < _model.quizout!.length) {
                    FFAppState().addToQuizids(
                        _model.quizout!.elementAtOrNull(FFAppState().i)!.id);
                    FFAppState().addToQuiz(QuizoptionsStruct());
                    safeSetState(() {});
                    FFAppState().i = FFAppState().i + 1;
                    safeSetState(() {});
                  }
                  FFAppState().i = 0;
                  FFAppState().start = 10.0;
                  FFAppState().end = 1000.0;
                  safeSetState(() {});

                  context.pushNamed(
                    'QuizShop',
                    queryParameters: {
                      'type': serializeParam(
                        widget.type,
                        ParamType.String,
                      ),
                    }.withoutNulls,
                  );

                  safeSetState(() {});
                },
                child: Container(
                  width: double.infinity,
                  height: 52.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).n950,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          't98kicir' /* TAKE THE QUIZ */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'PP Hatton',
                              color: FlutterFlowTheme.of(context).n50,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 10.0,
              height: 10.0,
              decoration: const BoxDecoration(),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                Navigator.pop(context);
              },
              child: Text(
                FFLocalizations.of(context).getText(
                  '63vkqf4m' /* Go on without */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Montserrat',
                      color: FlutterFlowTheme.of(context).n700,
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ),
          ].divide(const SizedBox(height: 4.0)),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
