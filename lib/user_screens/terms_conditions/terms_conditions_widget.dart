import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'terms_conditions_model.dart';
export 'terms_conditions_model.dart';

class TermsConditionsWidget extends StatefulWidget {
  const TermsConditionsWidget({super.key});

  @override
  State<TermsConditionsWidget> createState() => _TermsConditionsWidgetState();
}

class _TermsConditionsWidgetState extends State<TermsConditionsWidget> {
  late TermsConditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsConditionsModel());
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).m200,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 100.0,
                height: 48.0,
                decoration: const BoxDecoration(),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: const Color(0x00A20A05),
                    icon: FaIcon(
                      FontAwesomeIcons.chevronLeft,
                      color: FlutterFlowTheme.of(context).n950,
                      size: 17.0,
                    ),
                    onPressed: () async {
                      context.safePop();
                    },
                  ),
                  Container(
                    width: 100.0,
                    height: 70.0,
                    decoration: const BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      '88c64mwe' /* TERMS & CONDITIONS  */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'PP Hatton',
                          color: FlutterFlowTheme.of(context).n950,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '2lmudpfq' /* Your privacy is important to u... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).n950,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        lineHeight: 1.4,
                      ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'ny2zy61d' /* 1. INFORMATION COLLECTED */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'PP Hatton',
                            color: FlutterFlowTheme.of(context).m500,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                            lineHeight: 1.4,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 145.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 9.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '8jbccvsl' /* Modie may collect the followin... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n950,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'cg5fhtsv' /* - Personal Information: */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'xnm6ladd' /*  Name, email address, phone nu... */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Montserrat',
                                  fontSize: 12.0,
                                  height: 1.4,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  letterSpacing: 0.0,
                                  lineHeight: 1.4,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'kcms4e16' /* - Browsing Information: */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'guch1o1k' /*  Data on how you use our app, ... */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Montserrat',
                                  fontSize: 12.0,
                                  height: 1.4,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                  lineHeight: 1.4,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'syimfr21' /* - Device Information: */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'gj0lrmyj' /*  Device type, operating system... */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Montserrat',
                                  fontSize: 12.0,
                                  height: 1.4,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                  lineHeight: 1.4,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'jrz70nqq' /* 2. USE OF INFORMATION */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'PP Hatton',
                              color: FlutterFlowTheme.of(context).m500,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                              lineHeight: 1.4,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 180.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 9.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'a3wh907l' /* We use your information to: */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n950,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'ngpfp9aq' /* - Order Processing:  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  '7ftg5r9j' /* To process and deliver clothin... */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Montserrat',
                                  fontSize: 12.0,
                                  height: 1.4,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12.0,
                                  letterSpacing: 0.1,
                                  lineHeight: 1.4,
                                ),
                          ),
                        ),
                      ),
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'slfw7jnl' /* - Service Improvement:   */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'wup7ozyz' /* To better understand your pref... */,
                              ),
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontSize: 12.0,
                                height: 1.4,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'ycn5h4bq' /* - Communications:  */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'x464127e' /* To send notifications about yo... */,
                              ),
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontSize: 12.0,
                                height: 1.4,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'dfyyad44' /* - Security:  */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'u2tilwzm' /* To protect the integrity and s... */,
                              ),
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontSize: 12.0,
                                height: 1.4,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          's59utuwf' /* 3. SHARING OF INFORMATION */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).m500,
                              fontSize: 20.0,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500,
                              lineHeight: 1.4,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 130.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 9.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'um3um1i6' /* Modie does not share your pers... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n950,
                                    fontSize: 14.0,
                                    letterSpacing: 0.1,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'x8mkmf6o' /* - Service Providers:  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'c9m8yrj5' /* Partners who assist in the ope... */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Montserrat',
                                  fontSize: 12.0,
                                  height: 1.4,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  lineHeight: 1.4,
                                ),
                          ),
                        ),
                      ),
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'gfcfn5bs' /* - Legal Requirements:  */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'e7pqmny4' /* When necessary to comply with ... */,
                              ),
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontSize: 12.0,
                                height: 1.4,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '052v9mln' /* 4. STORAGE AND SECURITY */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'PP Hatton',
                              color: FlutterFlowTheme.of(context).m500,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                              lineHeight: 1.4,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 90.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'nue1uxvw' /* Your information is securely s... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n950,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'qk288icc' /* 5. YOUR RIGHTS */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'PP Hatton',
                              color: FlutterFlowTheme.of(context).m500,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                              lineHeight: 1.4,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 175.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 9.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'pumfuclt' /* You have the right to: */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n950,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'jf9hwdt5' /* - Access:  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  '6xztojrx' /* Request a copy of the informat... */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Montserrat',
                                  fontSize: 12.0,
                                  height: 1.4,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  lineHeight: 1.4,
                                ),
                          ),
                        ),
                      ),
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                '8rzgj8ep' /* - Correction:  */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'hzm8gtd1' /* Request the correction of inco... */,
                              ),
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontSize: 12.0,
                                height: 1.4,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                '77q2n564' /* - Deletion:  */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                '7z9rhxtk' /* Request the deletion of your p... */,
                              ),
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontSize: 12.0,
                                height: 1.4,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'ntgamef4' /* - Withdraw Consent:  */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                '8f46ru3g' /* Withdraw consent for the proce... */,
                              ),
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontSize: 12.0,
                                height: 1.4,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'o5xd8u6d' /* 6. CHANGE TO THIS PRIVACY POLI... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'PP Hatton',
                                    color: FlutterFlowTheme.of(context).m500,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                    lineHeight: 1.4,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'jtuf1co0' /* We may update this Privacy Pol... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n950,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'ox8ouu4a' /* 7. CONTACT */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'PP Hatton',
                              color: FlutterFlowTheme.of(context).m500,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                              lineHeight: 1.4,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 9.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '11kqswiz' /* If you have any questions or c... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n950,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'kxufxhem' /* - Email:  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'd3qz4a4c' /* hello@modie.co */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Montserrat',
                                  fontSize: 12.0,
                                  height: 1.4,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  lineHeight: 1.4,
                                ),
                          ),
                        ),
                      ),
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                '8acpjkdd' /* - Adress:  */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'oawgb322' /* Street street street */,
                              ),
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontSize: 12.0,
                                height: 1.4,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 100.0,
                height: 24.0,
                decoration: const BoxDecoration(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
