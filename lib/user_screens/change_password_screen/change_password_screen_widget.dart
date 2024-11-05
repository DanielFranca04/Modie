import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'change_password_screen_model.dart';
export 'change_password_screen_model.dart';

class ChangePasswordScreenWidget extends StatefulWidget {
  const ChangePasswordScreenWidget({super.key});

  @override
  State<ChangePasswordScreenWidget> createState() =>
      _ChangePasswordScreenWidgetState();
}

class _ChangePasswordScreenWidgetState
    extends State<ChangePasswordScreenWidget> {
  late ChangePasswordScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangePasswordScreenModel());

    _model.newPasswordTextFieldTextController ??= TextEditingController();
    _model.newPasswordTextFieldFocusNode ??= FocusNode();

    _model.confirmNewPasswordTextFieldTextController ??=
        TextEditingController();
    _model.confirmNewPasswordTextFieldFocusNode ??= FocusNode();
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
                          '1iysuc6o' /* CHANGE PASSWORD */,
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
                    Container(
                      width: 100.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 40.0, 20.0, 0.0),
                                    child: TextFormField(
                                      controller: _model
                                          .newPasswordTextFieldTextController,
                                      focusNode:
                                          _model.newPasswordTextFieldFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.newPasswordTextFieldTextController',
                                        const Duration(milliseconds: 10),
                                        () => safeSetState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: !_model
                                          .newPasswordTextFieldVisibility,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'm2kzs8hi' /* Password */,
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFF1B1B1B),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFF1B1B1B),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => safeSetState(
                                            () => _model
                                                    .newPasswordTextFieldVisibility =
                                                !_model
                                                    .newPasswordTextFieldVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.newPasswordTextFieldVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: const Color(0xFF4F4F4F),
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
                                          .newPasswordTextFieldTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (!FFAppState().samePassword) {
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Icon(
                                                  Icons.error_outline,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  size: 14.0,
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '9w55vbj2' /* Does not match */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                      controller: _model
                                          .confirmNewPasswordTextFieldTextController,
                                      focusNode: _model
                                          .confirmNewPasswordTextFieldFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.confirmNewPasswordTextFieldTextController',
                                        const Duration(milliseconds: 10),
                                        () => safeSetState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: !_model
                                          .confirmNewPasswordTextFieldVisibility,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'fq3t204f' /* Confirm Password */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'PP Hatton',
                                              color: FFAppState().samePassword
                                                  ? FlutterFlowTheme.of(context)
                                                      .n950
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
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFF1B1B1B),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FFAppState().samePassword
                                                ? FlutterFlowTheme.of(context)
                                                    .n950
                                                : FlutterFlowTheme.of(context)
                                                    .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => safeSetState(
                                            () => _model
                                                    .confirmNewPasswordTextFieldVisibility =
                                                !_model
                                                    .confirmNewPasswordTextFieldVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.confirmNewPasswordTextFieldVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: FFAppState().samePassword
                                                ? FlutterFlowTheme.of(context)
                                                    .n950
                                                : FlutterFlowTheme.of(context)
                                                    .error,
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
                                          .confirmNewPasswordTextFieldTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (!FFAppState().samePassword) {
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Icon(
                                                  Icons.error_outline,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  size: 14.0,
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '0gshf79v' /* Does not match */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
                            FFAppState().samePassword = true;
                            safeSetState(() {});
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            if (_model
                                    .newPasswordTextFieldTextController.text ==
                                _model.confirmNewPasswordTextFieldTextController
                                    .text) {
                              _model.error = await actions.resetPassword(
                                _model.newPasswordTextFieldTextController.text,
                              );
                              if (_model.error == null || _model.error == '') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Success',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );

                                context.pushNamed('HomePage');
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('Error'),
                                      content: const Text('Error'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            } else {
                              FFAppState().samePassword = false;
                              safeSetState(() {});
                            }

                            safeSetState(() {});
                          },
                          child: Container(
                            width: double.infinity,
                            height: 52.0,
                            decoration: BoxDecoration(
                              color: (_model.newPasswordTextFieldTextController
                                                  .text !=
                                              '') &&
                                      (_model.confirmNewPasswordTextFieldTextController
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
                                      '5gx6bifs' /* CHANGE NOW */,
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
