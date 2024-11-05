import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'forgot_password_screen_model.dart';
export 'forgot_password_screen_model.dart';

class ForgotPasswordScreenWidget extends StatefulWidget {
  const ForgotPasswordScreenWidget({
    super.key,
    this.email,
  });

  final String? email;

  @override
  State<ForgotPasswordScreenWidget> createState() =>
      _ForgotPasswordScreenWidgetState();
}

class _ForgotPasswordScreenWidgetState
    extends State<ForgotPasswordScreenWidget> {
  late ForgotPasswordScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPasswordScreenModel());

    _model.emailTextFieldForgotTextController ??=
        TextEditingController(text: widget.email);
    _model.emailTextFieldForgotFocusNode ??= FocusNode();
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
                height: MediaQuery.sizeOf(context).height,
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
                          '2ss5wfle' /* CHANGE PASSWORD */,
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
                            'hrohkwyj' /* Enter your e-mail to continue ... */,
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
                    Container(
                      width: 100.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                    ),
                    Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 70.0, 20.0, 0.0),
                        child: TextFormField(
                          controller: _model.emailTextFieldForgotTextController,
                          focusNode: _model.emailTextFieldForgotFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.emailTextFieldForgotTextController',
                            const Duration(milliseconds: 10),
                            () => safeSetState(() {}),
                          ),
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              '26gow7wm' /* Email */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'PP Hatton',
                                  color: const Color(0xFF1B1B1B),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
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
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          keyboardType: TextInputType.emailAddress,
                          validator: _model
                              .emailTextFieldForgotTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        if (FFAppState().Invalidcredentials) {
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 4.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 4.0, 0.0),
                                  child: Icon(
                                    Icons.error_outline,
                                    color: FlutterFlowTheme.of(context).error,
                                    size: 14.0,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'c3mnnecc' /* Email not registered */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          );
                        } else {
                          return Container(
                            width: 100.0,
                            height: 0.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          );
                        }
                      },
                    ),
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 50.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    FFAppState().Invalidcredentials = false;
                                    safeSetState(() {});
                                    _model.outputEmail =
                                        await ProfileTable().queryRows(
                                      queryFn: (q) => q.eq(
                                        'email',
                                        _model
                                            .emailTextFieldForgotTextController
                                            .text,
                                      ),
                                    );
                                    if (_model.outputEmail!.isEmpty) {
                                      FFAppState().Invalidcredentials = true;
                                      safeSetState(() {});
                                    } else {
                                      await UserManagementGroup
                                          .resetPasswordCall
                                          .call(
                                        email: _model
                                            .emailTextFieldForgotTextController
                                            .text,
                                      );

                                      context.pushNamed(
                                        'ForgotPasswordValidationCodeScreen',
                                        queryParameters: {
                                          'email': serializeParam(
                                            _model
                                                .emailTextFieldForgotTextController
                                                .text,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    }

                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 52.0,
                                    decoration: BoxDecoration(
                                      color: _model.emailTextFieldForgotTextController
                                                      .text !=
                                                  ''
                                          ? FlutterFlowTheme.of(context).n950
                                          : FlutterFlowTheme.of(context).n300,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 9.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '4mezy90j' /* CONTINUE */,
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 3.0),
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
