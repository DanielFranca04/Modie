import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'setup_profile_screen_model.dart';
export 'setup_profile_screen_model.dart';

class SetupProfileScreenWidget extends StatefulWidget {
  const SetupProfileScreenWidget({super.key});

  @override
  State<SetupProfileScreenWidget> createState() =>
      _SetupProfileScreenWidgetState();
}

class _SetupProfileScreenWidgetState extends State<SetupProfileScreenWidget> {
  late SetupProfileScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetupProfileScreenModel());

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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFD6E1E2),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlutterFlowIconButton(
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        icon: const Icon(
                          Icons.chevron_left_sharp,
                          color: Color(0xFF1B1B1B),
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.safePop();
                          FFAppState().Imageset = false;
                          FFAppState().validUsername = true;
                          safeSetState(() {});
                          safeSetState(() {
                            _model.isDataUploading1 = false;
                            _model.uploadedLocalFile1 =
                                FFUploadedFile(bytes: Uint8List.fromList([]));
                          });
                        },
                      ),
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
                      const EdgeInsetsDirectional.fromSTEB(16.0, 18.0, 16.0, 4.0),
                  child: Container(
                    width: double.infinity,
                    height: 107.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'ucjdwxlk' /* SET UP YOUR MODIE PROFILE */,
                          ),
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'PP Hatton',
                                    color: const Color(0xFF1B1B1B),
                                    fontSize: 32.0,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'l8s41pti' /* Enter a photo and your Modie u... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: const Color(0xFF4F4F4F),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 220.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Builder(
                          builder: (context) {
                            if (FFAppState().Imageset) {
                              return Container(
                                width: 124.0,
                                height: 124.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.memory(
                                  _model.uploadedLocalFile1.bytes ??
                                      Uint8List.fromList([]),
                                  fit: BoxFit.cover,
                                ),
                              );
                            } else {
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    allowPhoto: true,
                                    backgroundColor: const Color(0xFFD6E1E2),
                                    textColor: const Color(0xFF4F4F4F),
                                    pickerFontFamily: 'Montserrat',
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    safeSetState(
                                        () => _model.isDataUploading1 = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    try {
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                              ))
                                          .toList();
                                    } finally {
                                      _model.isDataUploading1 = false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                        selectedMedia.length) {
                                      safeSetState(() {
                                        _model.uploadedLocalFile1 =
                                            selectedUploadedFiles.first;
                                      });
                                    } else {
                                      safeSetState(() {});
                                      return;
                                    }
                                  }

                                  if (!((_model.uploadedLocalFile1.bytes
                                              ?.isEmpty ??
                                          true))) {
                                    FFAppState().Imageset = true;
                                    FFAppState().imageStatus = true;
                                    safeSetState(() {});
                                  }
                                },
                                child: Container(
                                  width: 124.0,
                                  height: 124.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/Frame_48096331.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                        Builder(
                          builder: (context) {
                            if (!FFAppState().imageStatus) {
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'ula27nal' /* Add Profile Picture */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: const Color(0xFF4F4F4F),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              );
                            } else {
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().Imageset = false;
                                    FFAppState().imageStatus = false;
                                    safeSetState(() {});
                                    safeSetState(() {
                                      _model.isDataUploading1 = false;
                                      _model.uploadedLocalFile1 =
                                          FFUploadedFile(
                                              bytes: Uint8List.fromList([]));
                                    });
                                  },
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '18objuqt' /* Remove Profile Picture */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: const Color(0xFF4F4F4F),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
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
                            16.0, 0.0, 16.0, 0.0),
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController',
                            const Duration(milliseconds: 10),
                            () async {
                              FFAppState().validUsername = true;
                              safeSetState(() {});
                            },
                          ),
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              '2gctgfnx' /* Username */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'PP Hatton',
                                  color: !FFAppState().validUsername
                                      ? FlutterFlowTheme.of(context).error
                                      : FlutterFlowTheme.of(context).n700,
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
                              borderSide: BorderSide(
                                color: !FFAppState().validUsername
                                    ? FlutterFlowTheme.of(context).error
                                    : FlutterFlowTheme.of(context).n950,
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
                                    color: FlutterFlowTheme.of(context).n800,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          if (!FFAppState().validUsername) {
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
                                    FFAppState().usernameWarn,
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
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            _model.validatorusername =
                                await actions.usernameValidator(
                              _model.textController.text,
                            );
                            shouldSetState = true;
                            if (_model.validatorusername == true) {
                              _model.usernameValidator =
                                  await ProfileTable().queryRows(
                                queryFn: (q) => q.eq(
                                  'username',
                                  _model.textController.text,
                                ),
                              );
                              shouldSetState = true;
                              _model.usernameValidatorUser =
                                  await ProfileTable().queryRows(
                                queryFn: (q) => q.eq(
                                  'email',
                                  currentUserEmail,
                                ),
                              );
                              shouldSetState = true;
                              if (_model
                                      .usernameValidatorUser?.first.username !=
                                  _model.textController.text) {
                                if (_model.usernameValidator!.isNotEmpty) {
                                  FFAppState().usernameWarn =
                                      'This name is already in use';
                                  safeSetState(() {});
                                  FFAppState().validUsername = false;
                                  safeSetState(() {});
                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                }
                              }
                            } else {
                              FFAppState().usernameWarn =
                                  'Only . and _ are allowed. No spaces or symbols';
                              safeSetState(() {});
                              FFAppState().validUsername = false;
                              safeSetState(() {});
                              if (shouldSetState) safeSetState(() {});
                              return;
                            }

                            if ((_model.uploadedLocalFile1.bytes?.isEmpty ??
                                    true)) {
                              await ProfileTable().update(
                                data: {
                                  'username': _model.textController.text,
                                },
                                matchingRows: (rows) => rows.eq(
                                  'profile_id',
                                  currentUserUid,
                                ),
                              );
                            } else {
                              {
                                safeSetState(
                                    () => _model.isDataUploading2 = true);
                                var selectedUploadedFiles = <FFUploadedFile>[];
                                var selectedMedia = <SelectedFile>[];
                                var downloadUrls = <String>[];
                                try {
                                  selectedUploadedFiles = _model
                                          .uploadedLocalFile1.bytes!.isNotEmpty
                                      ? [_model.uploadedLocalFile1]
                                      : <FFUploadedFile>[];
                                  selectedMedia =
                                      selectedFilesFromUploadedFiles(
                                    selectedUploadedFiles,
                                    storageFolderPath: 'User/',
                                  );
                                  downloadUrls =
                                      await uploadSupabaseStorageFiles(
                                    bucketName: 'User',
                                    selectedFiles: selectedMedia,
                                  );
                                } finally {
                                  _model.isDataUploading2 = false;
                                }
                                if (selectedUploadedFiles.length ==
                                        selectedMedia.length &&
                                    downloadUrls.length ==
                                        selectedMedia.length) {
                                  safeSetState(() {
                                    _model.uploadedLocalFile2 =
                                        selectedUploadedFiles.first;
                                    _model.uploadedFileUrl2 =
                                        downloadUrls.first;
                                  });
                                } else {
                                  safeSetState(() {});
                                  return;
                                }
                              }

                              await ProfileTable().update(
                                data: {
                                  'username': _model.textController.text,
                                  'profile_picture': _model.uploadedFileUrl2,
                                },
                                matchingRows: (rows) => rows.eq(
                                  'profile_id',
                                  currentUserUid,
                                ),
                              );
                            }

                            context.pushNamed('StartQuiz');

                            FFAppState().Imageset = false;
                            FFAppState().validUsername = true;
                            FFAppState().i = 0;
                            safeSetState(() {});
                            if (shouldSetState) safeSetState(() {});
                          },
                          child: Container(
                            width: double.infinity,
                            height: 52.0,
                            decoration: BoxDecoration(
                              color: _model.textController.text != ''
                                  ? FlutterFlowTheme.of(context).n950
                                  : FlutterFlowTheme.of(context).n300,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '64fx4q6z' /* BECOME A MODIER */,
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
    );
  }
}
