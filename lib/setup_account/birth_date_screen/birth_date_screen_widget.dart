import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'birth_date_screen_model.dart';
export 'birth_date_screen_model.dart';

class BirthDateScreenWidget extends StatefulWidget {
  const BirthDateScreenWidget({super.key});

  @override
  State<BirthDateScreenWidget> createState() => _BirthDateScreenWidgetState();
}

class _BirthDateScreenWidgetState extends State<BirthDateScreenWidget> {
  late BirthDateScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BirthDateScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().Imageset = false;
      safeSetState(() {});
      await InvitationTable().insert({
        'profile_id': currentUserUid,
      });
      await InvitationTable().update(
        data: {
          'status': false,
        },
        matchingRows: (rows) => rows.eq(
          'profile_id',
          currentUserUid,
        ),
      );
      if (FFAppState().CodeVal != '') {
        await InvitationTable().update(
          data: {
            'status': false,
          },
          matchingRows: (rows) => rows.eq(
            'code',
            FFAppState().CodeVal,
          ),
        );
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: const Color(0xFFD6E1E2),
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100.0,
                          height: 32.0,
                          decoration: const BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/ModieLogoBlack.png',
                            width: 104.0,
                            height: 32.19,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 18.0, 16.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 170.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '5b9q2csg' /* WHAT IS YOUR DATE OF BIRTH? */,
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'PP Hatton',
                                  color: const Color(0xFF1B1B1B),
                                  fontSize: 32.0,
                                  letterSpacing: 1.3,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'f1xhef90' /* This data assists Modie in tai... */,
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: const Color(0xFF4F4F4F),
                                    letterSpacing: 0.5,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 140.0, 20.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController',
                            const Duration(milliseconds: 10),
                            () async {
                              FFAppState().InvalidDate = false;
                              safeSetState(() {});
                            },
                          ),
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: FFLocalizations.of(context).getText(
                              'r4yhne1d' /* Birthday (DD MM YYYY) */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'PP Hatton',
                                  color: FlutterFlowTheme.of(context).n950,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                            alignLabelWithHint: false,
                            hintStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context).n950,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).n950,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).n950,
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
                                    fontFamily: 'Montserrat',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          textAlign: TextAlign.start,
                          maxLines: null,
                          keyboardType: TextInputType.datetime,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                          inputFormatters: [_model.textFieldMask],
                        ),
                        Builder(
                          builder: (context) {
                            if (FFAppState().InvalidDate) {
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 20.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 4.0, 0.0),
                                      child: Icon(
                                        Icons.error_outline,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 14.0,
                                      ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        _model.datValidator,
                                        '- - ',
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
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.35,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 30.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              var shouldSetState = false;
                              _model.datValidator = await actions.convertDate(
                                _model.textController.text,
                              );
                              shouldSetState = true;
                              if (_model.datValidator == 'Invalid') {
                                FFAppState().InvalidDate = true;
                                safeSetState(() {});
                                if (shouldSetState) safeSetState(() {});
                                return;
                              } else if (_model.datValidator ==
                                  'Invalid date format') {
                                FFAppState().InvalidDate = true;
                                safeSetState(() {});
                                if (shouldSetState) safeSetState(() {});
                                return;
                              } else if (_model.datValidator ==
                                  'Invalid month') {
                                FFAppState().InvalidDate = true;
                                safeSetState(() {});
                                if (shouldSetState) safeSetState(() {});
                                return;
                              } else if (_model.datValidator ==
                                  'Invalid day for the given month') {
                                FFAppState().InvalidDate = true;
                                safeSetState(() {});
                                if (shouldSetState) safeSetState(() {});
                                return;
                              } else if (_model.datValidator ==
                                  'Date cannot be in the future') {
                                FFAppState().InvalidDate = true;
                                safeSetState(() {});
                                if (shouldSetState) safeSetState(() {});
                                return;
                              } else {
                                _model.date = await ProfileTable().update(
                                  data: {
                                    'date_of_birth': supaSerialize<DateTime>(
                                        functions.stringToDate(
                                            _model.textController.text)),
                                  },
                                  matchingRows: (rows) => rows.eq(
                                    'profile_id',
                                    currentUserUid,
                                  ),
                                  returnRows: true,
                                );
                                shouldSetState = true;

                                context.pushNamed('SetupProfileScreen');
                              }

                              if (shouldSetState) safeSetState(() {});
                            },
                            child: Container(
                              width: double.infinity,
                              height: 52.0,
                              decoration: BoxDecoration(
                                color: _model.textController.text == ''
                                    ? FlutterFlowTheme.of(context).n300
                                    : FlutterFlowTheme.of(context).n950,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'izrrlaai' /* NEXT */,
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
                                        5.0, 0.0, 0.0, 3.0),
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
