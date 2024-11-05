import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'forgot_password_validation_code_screen_model.dart';
export 'forgot_password_validation_code_screen_model.dart';

class ForgotPasswordValidationCodeScreenWidget extends StatefulWidget {
  const ForgotPasswordValidationCodeScreenWidget({
    super.key,
    required this.email,
  });

  final String? email;

  @override
  State<ForgotPasswordValidationCodeScreenWidget> createState() =>
      _ForgotPasswordValidationCodeScreenWidgetState();
}

class _ForgotPasswordValidationCodeScreenWidgetState
    extends State<ForgotPasswordValidationCodeScreenWidget> {
  late ForgotPasswordValidationCodeScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => ForgotPasswordValidationCodeScreenModel());

    _model.codeTextFieldTextController ??= TextEditingController();
    _model.codeTextFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.asset(
                      'assets/images/Signup_changepassword-2.png',
                    ).image,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 55.0, 18.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            icon: FaIcon(
                              FontAwesomeIcons.angleLeft,
                              color: FlutterFlowTheme.of(context).n950,
                              size: 19.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                          Container(
                            width: 77.54,
                            height: 24.0,
                            decoration: BoxDecoration(
                              color: const Color(0x00FFFFFF),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/ModieLogoBlack.png',
                                ).image,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'qeti3jja' /* VALIDATION CODE */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'PP Hatton',
                              fontSize: 48.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 18.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ka1jjqr3' /* We sent a code to your email  */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n700,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.email,
                            '- - ',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n700,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 0.0),
                      child: TextFormField(
                        controller: _model.codeTextFieldTextController,
                        focusNode: _model.codeTextFieldFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.codeTextFieldTextController',
                          const Duration(milliseconds: 10),
                          () => safeSetState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            '5pce67ch' /* Code */,
                          ),
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'PP Hatton',
                                    color: FlutterFlowTheme.of(context).n950,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n950,
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF1B1B1B),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF1B1B1B),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.number,
                        validator: _model.codeTextFieldTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          if (!FFAppState().wasResended) {
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 12.0, 0.0, 0.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'b3rzqa1l' /* Didn't get the code?  */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: const Color(0xFF4F4F4F),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'ulm9n7sv' /* Resend Code */,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Montserrat',
                                        color: const Color(0xFFA20A05),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14.0,
                                        decoration: TextDecoration.underline,
                                      ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            );
                          } else {
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 12.0, 0.0, 0.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'q8i715iq' /* Didn't get the code? */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: const Color(0xFF4F4F4F),
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextSpan(
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'e7bcz21w' /* Resend in */,
                                            ),
                                            style: GoogleFonts.getFont(
                                              'Montserrat',
                                              color: const Color(0xFF4F4F4F),
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        2.0, 12.0, 0.0, 0.0),
                                    child: FlutterFlowTimer(
                                      initialTime: _model.timerInitialTimeMs,
                                      getDisplayTime: (value) =>
                                          StopWatchTimer.getDisplayTime(
                                        value,
                                        hours: false,
                                        milliSecond: false,
                                      ),
                                      controller: _model.timerController,
                                      updateStateInterval:
                                          const Duration(milliseconds: 1000),
                                      onChanged:
                                          (value, displayTime, shouldUpdate) {
                                        _model.timerMilliseconds = value;
                                        _model.timerValue = displayTime;
                                        if (shouldUpdate) safeSetState(() {});
                                      },
                                      onEnded: () async {
                                        // Set Timer
                                        FFAppState().wasResended = false;
                                        safeSetState(() {});
                                      },
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: const Color(0xFF4F4F4F),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                        },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 50.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.outputcheck =
                                      await actions.verifyEmailResetPassword(
                                    widget.email!,
                                    _model.codeTextFieldTextController.text,
                                  );
                                  if (_model.outputcheck == true) {
                                    context.pushNamed('ChangePasswordScreen');
                                  }

                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 52.0,
                                  decoration: BoxDecoration(
                                    color: _model.codeTextFieldTextController
                                                    .text !=
                                                ''
                                        ? FlutterFlowTheme.of(context).n950
                                        : FlutterFlowTheme.of(context).n300,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'f3vpy6u1' /* CONTINUE */,
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
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            9.0, 0.0, 0.0, 3.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
