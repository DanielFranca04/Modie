import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());
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
                      '3nt13122' /* PRIVACY POLICY */,
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
                    'rdzvi3yt' /* Your privacy is important to u... */,
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
                        'injpp8og' /* 1. INFORMATION COLLECTED */,
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
                            '977m4e9f' /* Modie may collect the followin... */,
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
                                  'k5htglb9' /* - Personal Information: */,
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
                                  '6trs0x83' /*  Name, email address, phone nu... */,
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
                                  'dwmeh6fa' /* - Browsing Information: */,
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
                                  '4tvd21x8' /*  Data on how you use our app, ... */,
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
                                  'l02weait' /* - Device Information: */,
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
                                  '1rtkry9d' /*  Device type, operating system... */,
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
                          'nsoikk1z' /* 2. USE OF INFORMATION */,
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
                            'j5w4vqhe' /* We use your information to: */,
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
                                  'b9gr0ppa' /* - Order Processing:  */,
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
                                  'rdub6n9d' /* To process and deliver clothin... */,
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
                                'oj69ul6b' /* - Service Improvement:   */,
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
                                's218vysw' /* To better understand your pref... */,
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
                                '5f60fjri' /* - Communications:  */,
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
                                '8qjicztk' /* To send notifications about yo... */,
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
                                '7ntl897h' /* - Security:  */,
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
                                'dmmip6j2' /* To protect the integrity and s... */,
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
                          'xwwt13zg' /* 3. SHARING OF INFORMATION */,
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
                            '9gl8lbvp' /* Modie does not share your pers... */,
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
                                  '4stdzaem' /* - Service Providers:  */,
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
                                  '1quvfrb5' /* Partners who assist in the ope... */,
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
                                'heklfcac' /* - Legal Requirements:  */,
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
                                '8gl50pmg' /* When necessary to comply with ... */,
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
                          'm1yj7f8z' /* 4. STORAGE AND SECURITY */,
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
                            '7tdbihpw' /* Your information is securely s... */,
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
                          'kau7tojp' /* 5. YOUR RIGHTS */,
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
                            'mp2i4z5u' /* You have the right to: */,
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
                                  'n4f1gbiq' /* - Access:  */,
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
                                  '3l4uddrp' /* Request a copy of the informat... */,
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
                                '3ud3m77r' /* - Correction:  */,
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
                                '82x96dww' /* Request the correction of inco... */,
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
                                'ei7uaezq' /* - Deletion:  */,
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
                                'b1uepdpq' /* Request the deletion of your p... */,
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
                                '2lxtupf7' /* - Withdraw Consent:  */,
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
                                'hqm4kwx9' /* Withdraw consent for the proce... */,
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
                                'ddossve7' /* 6. CHANGE TO THIS PRIVACY POLI... */,
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
                            'ostmb34n' /* We may update this Privacy Pol... */,
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
                          'ml1f9fid' /* 7. CONTACT */,
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
                            '071qxhz7' /* If you have any questions or c... */,
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
                                  'tmfl5uww' /* - Email:  */,
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
                                  'mxtcn6el' /* hello@modie.co */,
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
                                'q6qjp9lw' /* - Adress:  */,
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
                                'ze13x4w3' /* Street street street */,
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
