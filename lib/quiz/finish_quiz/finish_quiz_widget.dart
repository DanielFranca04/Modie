import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'finish_quiz_model.dart';
export 'finish_quiz_model.dart';

class FinishQuizWidget extends StatefulWidget {
  const FinishQuizWidget({super.key});

  @override
  State<FinishQuizWidget> createState() => _FinishQuizWidgetState();
}

class _FinishQuizWidgetState extends State<FinishQuizWidget> {
  late FinishQuizModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FinishQuizModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
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
                        'assets/images/Welcome.png',
                      ).image,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 100.0,
                          height: 40.0,
                          decoration: const BoxDecoration(),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: const BoxDecoration(),
                                ),
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
                          height: 70.0,
                          decoration: const BoxDecoration(),
                        ),
                        Container(
                          width: 144.0,
                          height: 175.0,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Circule_1.png',
                                      width: 145.0,
                                      height: 175.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.1, -0.08),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'jaiuzih3' /* 150 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'PP Hatton',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        fontSize: 38.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100.0,
                          height: 90.0,
                          decoration: const BoxDecoration(),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 228.0,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '5ggu0tn1' /* WELCOME TO MODIE! */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'PP Hatton',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        fontSize: 48.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 20.0,
                                  decoration: const BoxDecoration(),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'vnsl9gqz' /* As a thank you for becoming a ... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n700,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 100.0,
                          height: 70.0,
                          decoration: const BoxDecoration(),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().navbarguide = true;
                              FFAppState().quiz = [];
                              FFAppState().quizids = [];
                              FFAppState().navbarstate = 99;
                              safeSetState(() {});

                              context.pushNamed('HomePage');
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
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 9.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '2vtavthc' /* COLLECT REWARD */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'PP Hatton',
                                            color: const Color(0xFFF7F5F5),
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 3.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Backward.png',
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
                        ),
                        Container(
                          width: 100.0,
                          height: 40.0,
                          decoration: const BoxDecoration(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
