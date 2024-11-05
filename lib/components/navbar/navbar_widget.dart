import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  late NavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());
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
      width: double.infinity,
      height: !FFAppState().navbarguide ? 98.0 : 168.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).m200,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().navbarstate = 1;
                    safeSetState(() {});

                    context.pushNamed(
                      'HomePage',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Builder(
                          builder: (context) {
                            if (FFAppState().navbarstate != 1) {
                              return Icon(
                                FFIcons.kmodieLogoNoBackground1,
                                color: FlutterFlowTheme.of(context).n950,
                                size: 24.0,
                              );
                            } else {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/MODIE_LOGO_NO_BACKGROUND_1.png',
                                  width: 24.0,
                                  height: 24.0,
                                  fit: BoxFit.cover,
                                ),
                              );
                            }
                          },
                        ),
                        Opacity(
                          opacity: FFAppState().navbarstate == 1 ? 1.0 : 0.0,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '7hz0qz4g' /* HOME */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).m500,
                                    fontSize: 8.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        if (FFAppState().navbarguide == true)
                          Container(
                            width: 100.0,
                            height: 60.0,
                            decoration: const BoxDecoration(),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().navbarstate = 2;
                    safeSetState(() {});
                  },
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          FFIcons.kgroup1914,
                          color: FFAppState().navbarstate == 2
                              ? FlutterFlowTheme.of(context).m500
                              : FlutterFlowTheme.of(context).n950,
                          size: 24.0,
                        ),
                        Opacity(
                          opacity: FFAppState().navbarstate == 2 ? 1.0 : 0.0,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'r00b3ssc' /* EXPLORE */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).m500,
                                    fontSize: 8.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        if (FFAppState().navbarguide == true)
                          Container(
                            width: 100.0,
                            height: 60.0,
                            decoration: const BoxDecoration(),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().navbarstate = 3;
                    safeSetState(() {});
                  },
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          FFIcons.kbag2,
                          color: FFAppState().navbarstate == 3
                              ? FlutterFlowTheme.of(context).m500
                              : FlutterFlowTheme.of(context).n950,
                          size: 24.0,
                        ),
                        Opacity(
                          opacity: FFAppState().navbarstate == 3 ? 1.0 : 0.0,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'b2mg8b19' /* SHOP */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).m500,
                                    fontSize: 8.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        if (FFAppState().navbarguide == true)
                          Container(
                            width: 100.0,
                            height: 60.0,
                            decoration: const BoxDecoration(),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().navbarstate = 4;
                    safeSetState(() {});
                  },
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          FFIcons.kplusCircle,
                          color: FFAppState().navbarstate == 4
                              ? FlutterFlowTheme.of(context).m500
                              : FlutterFlowTheme.of(context).n950,
                          size: 24.0,
                        ),
                        Opacity(
                          opacity: FFAppState().navbarstate == 4 ? 1.0 : 0.0,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'qiu5d9mu' /* CREATE */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).m500,
                                    fontSize: 8.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        if (FFAppState().navbarguide == true)
                          Container(
                            width: 100.0,
                            height: 60.0,
                            decoration: const BoxDecoration(),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().navbarstate = 5;
                    FFAppState().navbarguide = false;
                    safeSetState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0x00090909),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          FFIcons.kgroup1939,
                          color: FFAppState().navbarstate == 5
                              ? FlutterFlowTheme.of(context).m500
                              : FlutterFlowTheme.of(context).n950,
                          size: 24.0,
                        ),
                        Opacity(
                          opacity: FFAppState().navbarstate == 5 ? 1.0 : 0.0,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '4i6btok4' /* REWARDS */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).m500,
                                    fontSize: 8.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        if (FFAppState().navbarguide == true)
                          Container(
                            width: 100.0,
                            height: 60.0,
                            decoration: const BoxDecoration(),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
