import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'start_quiz_model.dart';
export 'start_quiz_model.dart';

class StartQuizWidget extends StatefulWidget {
  const StartQuizWidget({super.key});

  @override
  State<StartQuizWidget> createState() => _StartQuizWidgetState();
}

class _StartQuizWidgetState extends State<StartQuizWidget> {
  late StartQuizModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StartQuizModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/Quiz.png',
                    ).image,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100.0,
                      height: 40.0,
                      decoration: const BoxDecoration(),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            icon: FaIcon(
                              FontAwesomeIcons.angleLeft,
                              color: FlutterFlowTheme.of(context).n950,
                              size: 20.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                          Expanded(
                            child: Container(
                              width: 20.0,
                              height: 20.0,
                              decoration: const BoxDecoration(),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/ModieLogoBlack.png',
                              width: 77.54,
                              height: 24.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: const BoxDecoration(),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '8f3n592h' /* WHAT LIFESTYLE DO YOU LIVE? */,
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 56.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                      lineHeight: 1.3,
                                    ),
                              ),
                              Container(
                                width: 100.0,
                                height: 10.0,
                                decoration: const BoxDecoration(),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'pi88eco1' /* Take our quiz for a personalis... */,
                                  ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.5,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 100.0,
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.quizoutput = await QuizTable().queryRows(
                                  queryFn: (q) =>
                                      q.order('Order', ascending: true),
                                );
                                while (FFAppState().i <
                                    _model.quizoutput!.length) {
                                  FFAppState().addToQuizids(
                                      _model.quizoutput![FFAppState().i].id);
                                  FFAppState().addToQuiz(QuizoptionsStruct());
                                  safeSetState(() {});
                                  FFAppState().i = FFAppState().i + 1;
                                  safeSetState(() {});
                                }
                                FFAppState().i = 0;
                                safeSetState(() {});

                                context.pushNamed('QuizPage');

                                safeSetState(() {});
                              },
                              child: Container(
                                width: 200.18,
                                height: 71.39,
                                decoration: BoxDecoration(
                                  color: const Color(0x00FFFFFF),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/Vector.png',
                                    ).image,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'qcc21rj8' /* Let's do it */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 3.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/Backward-2.png',
                                          width: 39.0,
                                          height: 24.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 40.0,
                        decoration: const BoxDecoration(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
