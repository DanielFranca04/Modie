import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'language_page_model.dart';
export 'language_page_model.dart';

class LanguagePageWidget extends StatefulWidget {
  const LanguagePageWidget({super.key});

  @override
  State<LanguagePageWidget> createState() => _LanguagePageWidgetState();
}

class _LanguagePageWidgetState extends State<LanguagePageWidget> {
  late LanguagePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanguagePageModel());
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
        backgroundColor: FlutterFlowTheme.of(context).m200,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 100.0,
                height: 40.0,
                decoration: const BoxDecoration(),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      icon: FaIcon(
                        FontAwesomeIcons.angleLeft,
                        color: FlutterFlowTheme.of(context).n950,
                        size: 18.0,
                      ),
                      onPressed: () async {
                        context.safePop();
                      },
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'pw38c7o3' /* LANGUAGE */,
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
                  ],
                ),
              ),
              Container(
                width: 100.0,
                height: 10.0,
                decoration: const BoxDecoration(),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'zzq56xoh' /* Please select your preferred l... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Montserrat',
                            color: FlutterFlowTheme.of(context).n950,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100.0,
                height: 20.0,
                decoration: const BoxDecoration(),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().Language = 'English';
                        safeSetState(() {});
                        setAppLanguage(context, FFAppState().Language);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).n950,
                            width: 0.5,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 8.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(1.5),
                                child: Image.asset(
                                  'assets/images/UNITED_KINGDOM.png',
                                  width: 24.0,
                                  height: 16.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '7skce31t' /* English */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: const BoxDecoration(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 4.0, 0.0),
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: FFAppState().Language == 'English'
                                        ? FlutterFlowTheme.of(context).m500
                                        : Colors.transparent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: FFAppState().Language == 'English'
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context).n950,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().Language = 'Italian';
                        safeSetState(() {});
                        setAppLanguage(context, 'it');
                      },
                      child: Container(
                        width: double.infinity,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).n950,
                            width: 0.5,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 8.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(1.5),
                                child: Image.asset(
                                  'assets/images/IVORY_COAST_2_.png',
                                  width: 24.0,
                                  height: 16.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'zxre2trt' /* Italian */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: const BoxDecoration(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 4.0, 0.0),
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: FFAppState().Language == 'Italian'
                                        ? FlutterFlowTheme.of(context).m500
                                        : Colors.transparent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: FFAppState().Language == 'Italian'
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context).n950,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ].divide(const SizedBox(height: 12.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
