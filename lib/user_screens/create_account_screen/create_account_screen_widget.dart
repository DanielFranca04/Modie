import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_account_screen_model.dart';
export 'create_account_screen_model.dart';

class CreateAccountScreenWidget extends StatefulWidget {
  const CreateAccountScreenWidget({super.key});

  @override
  State<CreateAccountScreenWidget> createState() =>
      _CreateAccountScreenWidgetState();
}

class _CreateAccountScreenWidgetState extends State<CreateAccountScreenWidget> {
  late CreateAccountScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateAccountScreenModel());

    _model.emailTextFieldTextController ??= TextEditingController();
    _model.emailTextFieldFocusNode ??= FocusNode();
    _model.emailTextFieldFocusNode!.addListener(
      () async {
        FFAppState().isRegistered = false;
        safeSetState(() {});
      },
    );
    _model.passwordTextFieldTextController ??= TextEditingController();
    _model.passwordTextFieldFocusNode ??= FocusNode();

    _model.confirmPasswordTextFieldTextController ??= TextEditingController();
    _model.confirmPasswordTextFieldFocusNode ??= FocusNode();

    _model.invitationCodeTextFieldTextController ??= TextEditingController();
    _model.invitationCodeTextFieldFocusNode ??= FocusNode();
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
          primary: false,
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 55.0, 18.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
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
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 12.0, 20.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 120.0,
                          decoration: const BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'u3dxqaf2' /* CREATE ACCOUNT */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'PP Hatton',
                                  fontSize: 48.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 32.0,
                        decoration: const BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                      ),
                      Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: TextFormField(
                                controller: _model.emailTextFieldTextController,
                                focusNode: _model.emailTextFieldFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.emailTextFieldTextController',
                                  const Duration(milliseconds: 10),
                                  () => safeSetState(() {}),
                                ),
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    '2itnbv69' /* Email */,
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
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).n950,
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                keyboardType: TextInputType.emailAddress,
                                validator: _model
                                    .emailTextFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                if (FFAppState().isRegistered) {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 10.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 4.0, 0.0),
                                          child: Icon(
                                            Icons.error_outline,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 14.0,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'teky9wm4' /* This email is already register... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
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
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 24.0, 20.0, 0.0),
                              child: TextFormField(
                                controller:
                                    _model.passwordTextFieldTextController,
                                focusNode: _model.passwordTextFieldFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.passwordTextFieldTextController',
                                  const Duration(milliseconds: 10),
                                  () => safeSetState(() {}),
                                ),
                                autofocus: true,
                                obscureText:
                                    !_model.passwordTextFieldVisibility,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'i92n3h9d' /* Password */,
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
                                  suffixIcon: InkWell(
                                    onTap: () => safeSetState(
                                      () => _model.passwordTextFieldVisibility =
                                          !_model.passwordTextFieldVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.passwordTextFieldVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: FlutterFlowTheme.of(context).n950,
                                      size: 22.0,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                validator: _model
                                    .passwordTextFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 24.0, 20.0, 0.0),
                              child: TextFormField(
                                controller: _model
                                    .confirmPasswordTextFieldTextController,
                                focusNode:
                                    _model.confirmPasswordTextFieldFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.confirmPasswordTextFieldTextController',
                                  const Duration(milliseconds: 10),
                                  () => safeSetState(() {}),
                                ),
                                autofocus: true,
                                obscureText:
                                    !_model.confirmPasswordTextFieldVisibility,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'egbiu63l' /* Confirm Password */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'PP Hatton',
                                        color: FFAppState().samePassword
                                            ? FlutterFlowTheme.of(context).n950
                                            : FlutterFlowTheme.of(context)
                                                .error,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
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
                                    borderSide: BorderSide(
                                      color: FFAppState().samePassword
                                          ? FlutterFlowTheme.of(context).n950
                                          : FlutterFlowTheme.of(context).error,
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
                                  suffixIcon: InkWell(
                                    onTap: () => safeSetState(
                                      () => _model
                                              .confirmPasswordTextFieldVisibility =
                                          !_model
                                              .confirmPasswordTextFieldVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.confirmPasswordTextFieldVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: valueOrDefault<Color>(
                                        FFAppState().samePassword
                                            ? FlutterFlowTheme.of(context).n950
                                            : FlutterFlowTheme.of(context)
                                                .error,
                                        FlutterFlowTheme.of(context).n950,
                                      ),
                                      size: 22.0,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                validator: _model
                                    .confirmPasswordTextFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          if (!FFAppState().samePassword) {
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 10.0, 20.0, 0.0),
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
                                      'l646p7cq' /* Does not match */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: FlutterFlowTheme.of(context)
                                              .error,
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
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 20.0, 0.0),
                        child: TextFormField(
                          controller:
                              _model.invitationCodeTextFieldTextController,
                          focusNode: _model.invitationCodeTextFieldFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.invitationCodeTextFieldTextController',
                            const Duration(milliseconds: 10),
                            () => safeSetState(() {}),
                          ),
                          onFieldSubmitted: (_) async {
                            FFAppState().valcode = true;
                            safeSetState(() {});
                          },
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'cir9qh7j' /* Invitation Code */,
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
                          validator: _model
                              .invitationCodeTextFieldTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Opacity(
                        opacity: FFAppState().valcode == true ? 0.0 : 1.0,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 10.0, 20.0, 0.0),
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
                                  'kb53gao6' /* Invalid code */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).error,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 64.0, 20.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            var shouldSetState = false;
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            if (_model.passwordTextFieldTextController.text ==
                                _model.confirmPasswordTextFieldTextController
                                    .text) {
                              // setTrue
                              FFAppState().samePassword = true;
                              FFAppState().isRegistered = false;
                              FFAppState().navbarguide = true;
                              FFAppState().guide = 1;
                              safeSetState(() {});
                              _model.outputemail =
                                  await ProfileTable().queryRows(
                                queryFn: (q) => q.eq(
                                  'email',
                                  _model.emailTextFieldTextController.text,
                                ),
                              );
                              shouldSetState = true;
                              if (_model.outputemail!.isNotEmpty) {
                                FFAppState().isRegistered = true;
                                safeSetState(() {});
                              } else {
                                if (_model.invitationCodeTextFieldTextController
                                            .text !=
                                        '') {
                                  _model.codevalidator =
                                      await InvitationTable().queryRows(
                                    queryFn: (q) => q.eq(
                                      'code',
                                      _model
                                          .invitationCodeTextFieldTextController
                                          .text,
                                    ),
                                  );
                                  shouldSetState = true;
                                  if (_model.codevalidator!.isNotEmpty) {
                                    FFAppState().CodeVal = _model
                                        .invitationCodeTextFieldTextController
                                        .text;
                                    safeSetState(() {});
                                  } else {
                                    FFAppState().valcode = false;
                                    safeSetState(() {});
                                    if (shouldSetState) safeSetState(() {});
                                    return;
                                  }
                                }

                                context.pushNamedAuth(
                                  'ValidationCodeScreen',
                                  context.mounted,
                                  queryParameters: {
                                    'email': serializeParam(
                                      _model.emailTextFieldTextController.text,
                                      ParamType.String,
                                    ),
                                    'password': serializeParam(
                                      _model
                                          .passwordTextFieldTextController.text,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );

                                GoRouter.of(context).prepareAuthEvent();
                                if (_model
                                        .passwordTextFieldTextController.text !=
                                    _model
                                        .confirmPasswordTextFieldTextController
                                        .text) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Passwords don\'t match!',
                                      ),
                                    ),
                                  );
                                  return;
                                }

                                final user =
                                    await authManager.createAccountWithEmail(
                                  context,
                                  _model.emailTextFieldTextController.text,
                                  _model.passwordTextFieldTextController.text,
                                );
                                if (user == null) {
                                  return;
                                }

                                context.pushNamedAuth(
                                  'ValidationCodeScreen',
                                  context.mounted,
                                  queryParameters: {
                                    'email': serializeParam(
                                      _model.emailTextFieldTextController.text,
                                      ParamType.String,
                                    ),
                                    'password': serializeParam(
                                      _model
                                          .passwordTextFieldTextController.text,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              }
                            } else {
                              // setFalse
                              FFAppState().samePassword = false;
                              safeSetState(() {});
                            }

                            if (shouldSetState) safeSetState(() {});
                          },
                          child: Container(
                            width: double.infinity,
                            height: 52.0,
                            decoration: BoxDecoration(
                              color: (_model.emailTextFieldTextController
                                                  .text !=
                                              '') &&
                                      (_model.passwordTextFieldTextController
                                                  .text !=
                                              '') &&
                                      (_model.confirmPasswordTextFieldTextController
                                                  .text !=
                                              '')
                                  ? FlutterFlowTheme.of(context).n950
                                  : FlutterFlowTheme.of(context).n300,
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
                                      'x0n2s2nd' /* CONTINUE */,
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
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 55.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'nhj41df1' /* Have an account? */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: const Color(0xFF4F4F4F),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      '9udgb21t' /*  Log in */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      color: const Color(0xFFA20A05),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0,
                                    ),
                                    mouseCursor: SystemMouseCursors.click,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        context.safePop();
                                        FFAppState().samePassword = true;
                                        safeSetState(() {});
                                      },
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 36.0, 16.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      '8n19weai' /* By continuing, you agree to Mo... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: const Color(0xFF4F4F4F),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'npaw96ji' /* Terms of Service  */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      color: const Color(0xFFA20A05),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12.0,
                                    ),
                                    mouseCursor: SystemMouseCursors.click,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        context.pushNamed('PrivacyPolicy');
                                      },
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      '4515eazq' /* and confirm that you read our  */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      color: const Color(0xFF4F4F4F),
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'sjzle4h0' /* Privacy Policy. */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      color: const Color(0xFFA20A05),
                                      fontSize: 12.0,
                                    ),
                                    mouseCursor: SystemMouseCursors.click,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        context.pushNamed('PrivacyPolicy');
                                      },
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 50.0,
                        decoration: const BoxDecoration(),
                      ),
                    ],
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
