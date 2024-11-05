import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'save_quiz_model.dart';
export 'save_quiz_model.dart';

class SaveQuizWidget extends StatefulWidget {
  const SaveQuizWidget({super.key});

  @override
  State<SaveQuizWidget> createState() => _SaveQuizWidgetState();
}

class _SaveQuizWidgetState extends State<SaveQuizWidget> {
  late SaveQuizModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaveQuizModel());
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
        height: 202.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).m200,
          border: Border.all(
            color: FlutterFlowTheme.of(context).n950,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                'bz9pkvd5' /* SAVE CHANGES */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'PP Hatton',
                    color: FlutterFlowTheme.of(context).n950,
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: false,
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'nkn3ma3n' /* You've made some changes to yo... */,
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Montserrat',
                      color: FlutterFlowTheme.of(context).n900,
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  while (FFAppState().ops < FFAppState().quizids.length) {
                    await QuizResultsTable().update(
                      data: {
                        'answers': FFAppState().quiz[FFAppState().ops].options,
                        'answered_at':
                            supaSerialize<DateTime>(getCurrentTimestamp),
                      },
                      matchingRows: (rows) => rows
                          .eq(
                            'user_id',
                            currentUserUid,
                          )
                          .eq(
                            'quiz_id',
                            FFAppState().quizids[FFAppState().ops],
                          ),
                    );
                    FFAppState().ops = FFAppState().ops + 1;
                    safeSetState(() {});
                  }

                  context.pushNamed(
                    'MyModie',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );

                  FFAppState().ops = 0;
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
                          'n070pq1o' /* SAVE */,
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
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'MyModie',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );

                FFAppState().quizids = [];
                FFAppState().quiz = [];
                safeSetState(() {});
              },
              child: Text(
                FFLocalizations.of(context).getText(
                  'qkqz53f8' /* Continue without saving */,
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
          ],
        ),
      ),
    );
  }
}
