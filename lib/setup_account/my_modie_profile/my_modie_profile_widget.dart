import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'my_modie_profile_model.dart';
export 'my_modie_profile_model.dart';

class MyModieProfileWidget extends StatefulWidget {
  const MyModieProfileWidget({super.key});

  @override
  State<MyModieProfileWidget> createState() => _MyModieProfileWidgetState();
}

class _MyModieProfileWidgetState extends State<MyModieProfileWidget> {
  late MyModieProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyModieProfileModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().imgsetprofile == 0) {
        _model.useroutput = await ProfileTable().queryRows(
          queryFn: (q) => q.eq(
            'profile_id',
            currentUserUid,
          ),
        );
        if (_model.useroutput?.first.profilePicture != null &&
            _model.useroutput?.first.profilePicture != '') {
          FFAppState().imgsetprofile = 1;
          safeSetState(() {});
        } else {
          FFAppState().imgsetprofile = 2;
          safeSetState(() {});
        }
      }
    });

    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textFieldFocusNode4 ??= FocusNode();

    _model.aboutFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<ProfileRow>>(
      future: ProfileTable().querySingleRow(
        queryFn: (q) => q.eq(
          'profile_id',
          currentUserUid,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).m200,
            body: const Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFA20A05),
                  ),
                ),
              ),
            ),
          );
        }
        List<ProfileRow> myModieProfileProfileRowList = snapshot.data!;

        final myModieProfileProfileRow = myModieProfileProfileRowList.isNotEmpty
            ? myModieProfileProfileRowList.first
            : null;

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
                    height: 50.0,
                    decoration: const BoxDecoration(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          icon: FaIcon(
                            FontAwesomeIcons.angleLeft,
                            color: FlutterFlowTheme.of(context).n950,
                            size: 18.0,
                          ),
                          onPressed: () async {
                            context.pushNamed(
                              'MyModie',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );

                            safeSetState(() {
                              _model.isDataUploading4 = false;
                              _model.uploadedLocalFile4 =
                                  FFUploadedFile(bytes: Uint8List.fromList([]));
                              _model.uploadedFileUrl4 = '';
                            });

                            safeSetState(() {
                              _model.isDataUploading1 = false;
                              _model.uploadedLocalFile1 =
                                  FFUploadedFile(bytes: Uint8List.fromList([]));
                            });

                            safeSetState(() {
                              _model.isDataUploading4 = false;
                              _model.uploadedLocalFile4 =
                                  FFUploadedFile(bytes: Uint8List.fromList([]));
                              _model.uploadedFileUrl4 = '';
                            });

                            safeSetState(() {
                              _model.isDataUploading3 = false;
                              _model.uploadedLocalFile3 =
                                  FFUploadedFile(bytes: Uint8List.fromList([]));
                            });

                            FFAppState().isProfileChanged = false;
                            FFAppState().validDay = true;
                            FFAppState().validYear = true;
                            FFAppState().validMonth = true;
                            FFAppState().validUsername = true;
                            FFAppState().imgsetprofile = 0;
                            safeSetState(() {});
                          },
                        ),
                        Expanded(
                          child: Container(
                            width: 20.0,
                            height: 20.0,
                            decoration: const BoxDecoration(),
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            '3u59z3l9' /* MY PROFILE */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                  SizedBox(
                    width: double.infinity,
                    height: 151.0,
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 151.0,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 126.0,
                                  height: 126.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).m500,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Builder(
                                        builder: (context) {
                                          if (FFAppState().imgsetprofile == 1) {
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final selectedMedia =
                                                    await selectMediaWithSourceBottomSheet(
                                                  context: context,
                                                  allowPhoto: true,
                                                );
                                                if (selectedMedia != null &&
                                                    selectedMedia.every((m) =>
                                                        validateFileFormat(
                                                            m.storagePath,
                                                            context))) {
                                                  safeSetState(() => _model
                                                      .isDataUploading1 = true);
                                                  var selectedUploadedFiles =
                                                      <FFUploadedFile>[];

                                                  try {
                                                    selectedUploadedFiles =
                                                        selectedMedia
                                                            .map((m) =>
                                                                FFUploadedFile(
                                                                  name: m
                                                                      .storagePath
                                                                      .split(
                                                                          '/')
                                                                      .last,
                                                                  bytes:
                                                                      m.bytes,
                                                                  height: m
                                                                      .dimensions
                                                                      ?.height,
                                                                  width: m
                                                                      .dimensions
                                                                      ?.width,
                                                                  blurHash: m
                                                                      .blurHash,
                                                                ))
                                                            .toList();
                                                  } finally {
                                                    _model.isDataUploading1 =
                                                        false;
                                                  }
                                                  if (selectedUploadedFiles
                                                          .length ==
                                                      selectedMedia.length) {
                                                    safeSetState(() {
                                                      _model.uploadedLocalFile1 =
                                                          selectedUploadedFiles
                                                              .first;
                                                    });
                                                  } else {
                                                    safeSetState(() {});
                                                    return;
                                                  }
                                                }

                                                if ((_model
                                                            .uploadedLocalFile1
                                                            .bytes
                                                            ?.isNotEmpty ??
                                                        false)) {
                                                  FFAppState().imgsetprofile =
                                                      3;
                                                  FFAppState()
                                                      .isProfileChanged = true;
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
                                                child: Image.network(
                                                  myModieProfileProfileRow!
                                                      .profilePicture!,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            );
                                          } else if (FFAppState()
                                                  .imgsetprofile ==
                                              2) {
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final selectedMedia =
                                                    await selectMediaWithSourceBottomSheet(
                                                  context: context,
                                                  allowPhoto: true,
                                                );
                                                if (selectedMedia != null &&
                                                    selectedMedia.every((m) =>
                                                        validateFileFormat(
                                                            m.storagePath,
                                                            context))) {
                                                  safeSetState(() => _model
                                                      .isDataUploading2 = true);
                                                  var selectedUploadedFiles =
                                                      <FFUploadedFile>[];

                                                  try {
                                                    selectedUploadedFiles =
                                                        selectedMedia
                                                            .map((m) =>
                                                                FFUploadedFile(
                                                                  name: m
                                                                      .storagePath
                                                                      .split(
                                                                          '/')
                                                                      .last,
                                                                  bytes:
                                                                      m.bytes,
                                                                  height: m
                                                                      .dimensions
                                                                      ?.height,
                                                                  width: m
                                                                      .dimensions
                                                                      ?.width,
                                                                  blurHash: m
                                                                      .blurHash,
                                                                ))
                                                            .toList();
                                                  } finally {
                                                    _model.isDataUploading2 =
                                                        false;
                                                  }
                                                  if (selectedUploadedFiles
                                                          .length ==
                                                      selectedMedia.length) {
                                                    safeSetState(() {
                                                      _model.uploadedLocalFile2 =
                                                          selectedUploadedFiles
                                                              .first;
                                                    });
                                                  } else {
                                                    safeSetState(() {});
                                                    return;
                                                  }
                                                }

                                                if ((_model
                                                            .uploadedLocalFile2
                                                            .bytes
                                                            ?.isNotEmpty ??
                                                        false)) {
                                                  FFAppState().imgsetprofile =
                                                      3;
                                                  FFAppState()
                                                      .isProfileChanged = true;
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Container(
                                                width: 124.0,
                                                height: 124.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/Frame_48096331.png',
                                                    ).image,
                                                  ),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            );
                                          } else if (FFAppState()
                                                  .imgsetprofile ==
                                              3) {
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final selectedMedia =
                                                    await selectMediaWithSourceBottomSheet(
                                                  context: context,
                                                  allowPhoto: true,
                                                );
                                                if (selectedMedia != null &&
                                                    selectedMedia.every((m) =>
                                                        validateFileFormat(
                                                            m.storagePath,
                                                            context))) {
                                                  safeSetState(() => _model
                                                      .isDataUploading3 = true);
                                                  var selectedUploadedFiles =
                                                      <FFUploadedFile>[];

                                                  try {
                                                    selectedUploadedFiles =
                                                        selectedMedia
                                                            .map((m) =>
                                                                FFUploadedFile(
                                                                  name: m
                                                                      .storagePath
                                                                      .split(
                                                                          '/')
                                                                      .last,
                                                                  bytes:
                                                                      m.bytes,
                                                                  height: m
                                                                      .dimensions
                                                                      ?.height,
                                                                  width: m
                                                                      .dimensions
                                                                      ?.width,
                                                                  blurHash: m
                                                                      .blurHash,
                                                                ))
                                                            .toList();
                                                  } finally {
                                                    _model.isDataUploading3 =
                                                        false;
                                                  }
                                                  if (selectedUploadedFiles
                                                          .length ==
                                                      selectedMedia.length) {
                                                    safeSetState(() {
                                                      _model.uploadedLocalFile3 =
                                                          selectedUploadedFiles
                                                              .first;
                                                    });
                                                  } else {
                                                    safeSetState(() {});
                                                    return;
                                                  }
                                                }

                                                if ((_model
                                                            .uploadedLocalFile3
                                                            .bytes
                                                            ?.isNotEmpty ??
                                                        false)) {
                                                  safeSetState(() {
                                                    _model.isDataUploading1 =
                                                        false;
                                                    _model.uploadedLocalFile1 =
                                                        FFUploadedFile(
                                                            bytes: Uint8List
                                                                .fromList([]));
                                                  });

                                                  safeSetState(() {
                                                    _model.isDataUploading2 =
                                                        false;
                                                    _model.uploadedLocalFile2 =
                                                        FFUploadedFile(
                                                            bytes: Uint8List
                                                                .fromList([]));
                                                  });
                                                }
                                              },
                                              child: Container(
                                                width: 124.0,
                                                height: 124.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.memory(
                                                  () {
                                                        if ((_model
                                                                    .uploadedLocalFile1
                                                                    .bytes
                                                                    ?.isNotEmpty ??
                                                                false)) {
                                                          return _model
                                                              .uploadedLocalFile1;
                                                        } else if ((_model
                                                                    .uploadedLocalFile2
                                                                    .bytes
                                                                    ?.isNotEmpty ??
                                                                false)) {
                                                          return _model
                                                              .uploadedLocalFile2;
                                                        } else {
                                                          return _model
                                                              .uploadedLocalFile3;
                                                        }
                                                      }()
                                                          .bytes ??
                                                      Uint8List.fromList([]),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            );
                                          } else {
                                            return const Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [],
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
                          alignment: const AlignmentDirectional(0.22, 0.72),
                          child: Container(
                            width: 22.0,
                            height: 22.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).m200,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/message-edit.png',
                                ).image,
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).m500,
                                width: 1.0,
                              ),
                            ),
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
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'arbfjsfg' /* First Name */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              SizedBox(
                                width: 200.0,
                                child: TextFormField(
                                  controller: _model.textController1 ??=
                                      TextEditingController(
                                    text: myModieProfileProfileRow?.firstname,
                                  ),
                                  focusNode: _model.textFieldFocusNode1,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textController1',
                                    const Duration(milliseconds: 10),
                                    () async {
                                      if (_model.textController1.text !=
                                          myModieProfileProfileRow?.firstname) {
                                        FFAppState().isProfileChanged = true;
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().isProfileChanged = false;
                                        safeSetState(() {});
                                      }
                                    },
                                  ),
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'PP Hatton',
                                          color:
                                              FlutterFlowTheme.of(context).n950,
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
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.transparent,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        letterSpacing: 0.0,
                                      ),
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model.textController1Validator
                                      .asValidator(context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '22cnghd3' /* Surname */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              SizedBox(
                                width: 200.0,
                                child: TextFormField(
                                  controller: _model.textController2 ??=
                                      TextEditingController(
                                    text: myModieProfileProfileRow?.surname,
                                  ),
                                  focusNode: _model.textFieldFocusNode2,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textController2',
                                    const Duration(milliseconds: 10),
                                    () async {
                                      if (_model.textController2.text !=
                                          myModieProfileProfileRow?.surname) {
                                        FFAppState().isProfileChanged = true;
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().isProfileChanged = false;
                                        safeSetState(() {});
                                      }
                                    },
                                  ),
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'PP Hatton',
                                          color:
                                              FlutterFlowTheme.of(context).n950,
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
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.transparent,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        letterSpacing: 0.0,
                                      ),
                                  textAlign: TextAlign.start,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model.textController2Validator
                                      .asValidator(context),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 30.0,
                    decoration: const BoxDecoration(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'vak0x190' /* Username */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: _model.textController3 ??=
                                      TextEditingController(
                                    text: myModieProfileProfileRow?.username,
                                  ),
                                  focusNode: _model.textFieldFocusNode3,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textController3',
                                    const Duration(milliseconds: 10),
                                    () async {
                                      FFAppState().validUsername = true;
                                      safeSetState(() {});
                                      if (myModieProfileProfileRow?.username !=
                                          _model.textController3.text) {
                                        FFAppState().isProfileChanged = true;
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().isProfileChanged = false;
                                        safeSetState(() {});
                                      }
                                    },
                                  ),
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'PP Hatton',
                                          color:
                                              FlutterFlowTheme.of(context).n950,
                                          fontSize: 14.0,
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
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.transparent,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        letterSpacing: 0.0,
                                      ),
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model.textController3Validator
                                      .asValidator(context),
                                ),
                              ),
                              if (FFAppState().validUsername == false)
                                Padding(
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
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 14.0,
                                        ),
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'yxlbbjb8' /* This username is already in us... */,
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
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 30.0,
                    decoration: const BoxDecoration(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'ptxjm96j' /* Date of Birth */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              TextFormField(
                                controller: _model.textController4 ??=
                                    TextEditingController(
                                  text: functions.dateToString(
                                      myModieProfileProfileRow?.dateOfBirth),
                                ),
                                focusNode: _model.textFieldFocusNode4,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.textController4',
                                  const Duration(milliseconds: 10),
                                  () async {
                                    FFAppState().InvalidDate = false;
                                    safeSetState(() {});
                                    FFAppState().validUsername = true;
                                    safeSetState(() {});
                                    if (myModieProfileProfileRow?.dateOfBirth !=
                                        functions.stringToDate(
                                            _model.textController4.text)) {
                                      FFAppState().isProfileChanged = true;
                                      safeSetState(() {});
                                    } else {
                                      FFAppState().isProfileChanged = false;
                                      safeSetState(() {});
                                    }
                                  },
                                ),
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    '6oaklsam' /* Birthday (dd/mm/yyyy) */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'PP Hatton',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                  alignLabelWithHint: false,
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'PP Hatton',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                textAlign: TextAlign.start,
                                maxLines: null,
                                keyboardType: TextInputType.datetime,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model.textController4Validator
                                    .asValidator(context),
                                inputFormatters: [_model.textFieldMask4],
                              ),
                              Opacity(
                                opacity: FFAppState().InvalidDate ? 1.0 : 0.0,
                                child: Padding(
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
                                          color: FlutterFlowTheme.of(context)
                                              .error,
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              letterSpacing: 0.0,
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
                  Container(
                    width: 100.0,
                    height: 30.0,
                    decoration: const BoxDecoration(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'qejrtdh1' /* Email */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'PP Hatton',
                                  color: FlutterFlowTheme.of(context).n950,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                  lineHeight: 1.7,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 9.0, 0.0, 0.0),
                            child: Text(
                              currentUserEmail,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n800,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 20.0,
                    decoration: const BoxDecoration(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 105.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _model.aboutFieldTextController ??=
                                  TextEditingController(
                                text: myModieProfileProfileRow?.aboutYou,
                              ),
                              focusNode: _model.aboutFieldFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.aboutFieldTextController',
                                const Duration(milliseconds: 10),
                                () async {
                                  if (_model.aboutFieldTextController.text !=
                                      myModieProfileProfileRow?.aboutYou) {
                                    FFAppState().isProfileChanged = true;
                                    safeSetState(() {});
                                  } else {
                                    FFAppState().isProfileChanged = false;
                                    safeSetState(() {});
                                  }
                                },
                              ),
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: FFLocalizations.of(context).getText(
                                  'u3enyp43' /* Write something about you... */,
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
                                      lineHeight: 1.8,
                                    ),
                                alignLabelWithHint: false,
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).n800,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).n950,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).n950,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: const Color(0x00FFFFFF),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              maxLines: 4,
                              maxLength: 250,
                              buildCounter: (context,
                                      {required currentLength,
                                      required isFocused,
                                      maxLength}) =>
                                  null,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model
                                  .aboutFieldTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 20.0,
                    decoration: const BoxDecoration(),
                  ),
                  if (FFAppState().isProfileChanged == true)
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              var shouldSetState = false;
                              if (_model.textController3.text !=
                                  myModieProfileProfileRow?.username) {
                                _model.checkUsername =
                                    await ProfileTable().queryRows(
                                  queryFn: (q) => q.eq(
                                    'username',
                                    _model.textController3.text,
                                  ),
                                );
                                shouldSetState = true;
                                if (_model.checkUsername!.isNotEmpty) {
                                  FFAppState().validUsername = false;
                                  safeSetState(() {});
                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                }
                              } else {
                                _model.datValidator = await actions.convertDate(
                                  _model.textController4.text,
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
                                  if (FFAppState().imgsetprofile == 3) {
                                    {
                                      safeSetState(
                                          () => _model.isDataUploading4 = true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];
                                      var selectedMedia = <SelectedFile>[];
                                      var downloadUrls = <String>[];
                                      try {
                                        selectedUploadedFiles = () {
                                          if ((_model.uploadedLocalFile1.bytes
                                                      ?.isNotEmpty ??
                                                  false)) {
                                            return _model.uploadedLocalFile1;
                                          } else if ((_model.uploadedLocalFile2.bytes
                                                      ?.isNotEmpty ??
                                                  false)) {
                                            return _model.uploadedLocalFile2;
                                          } else {
                                            return _model.uploadedLocalFile3;
                                          }
                                        }()
                                                .bytes!
                                                .isNotEmpty
                                            ? [
                                                () {
                                                  if ((_model
                                                              .uploadedLocalFile1
                                                              .bytes
                                                              ?.isNotEmpty ??
                                                          false)) {
                                                    return _model
                                                        .uploadedLocalFile1;
                                                  } else if ((_model
                                                              .uploadedLocalFile2
                                                              .bytes
                                                              ?.isNotEmpty ??
                                                          false)) {
                                                    return _model
                                                        .uploadedLocalFile2;
                                                  } else {
                                                    return _model
                                                        .uploadedLocalFile3;
                                                  }
                                                }()
                                              ]
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
                                        _model.isDataUploading4 = false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                              selectedMedia.length &&
                                          downloadUrls.length ==
                                              selectedMedia.length) {
                                        safeSetState(() {
                                          _model.uploadedLocalFile4 =
                                              selectedUploadedFiles.first;
                                          _model.uploadedFileUrl4 =
                                              downloadUrls.first;
                                        });
                                      } else {
                                        safeSetState(() {});
                                        return;
                                      }
                                    }
                                  }
                                  await ProfileTable().update(
                                    data: {
                                      'profile_picture': () {
                                        if (FFAppState().imgsetprofile == 2) {
                                          return '';
                                        } else if (FFAppState().imgsetprofile ==
                                            1) {
                                          return myModieProfileProfileRow
                                              ?.profilePicture;
                                        } else {
                                          return _model.uploadedFileUrl4;
                                        }
                                      }(),
                                      'firstname': _model.textController1.text,
                                      'surname': _model.textController2.text,
                                      'username': _model.textController3.text,
                                      'about_you':
                                          _model.aboutFieldTextController.text,
                                      'date_of_birth': supaSerialize<DateTime>(
                                          functions.stringToDate(
                                              _model.textController4.text)),
                                    },
                                    matchingRows: (rows) => rows.eq(
                                      'profile_id',
                                      myModieProfileProfileRow?.profileId,
                                    ),
                                  );
                                  FFAppState().isProfileChanged = false;
                                  FFAppState().imgsetprofile = 0;
                                  safeSetState(() {});

                                  context.pushNamed(
                                    'MyModie_Profile',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                }
                              }

                              if (shouldSetState) safeSetState(() {});
                            },
                            child: Container(
                              width: double.infinity,
                              height: 52.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'v7kbjahl' /* SAVE CHANGES */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'PP Hatton',
                                          color:
                                              FlutterFlowTheme.of(context).n50,
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  Container(
                    width: 100.0,
                    height: 30.0,
                    decoration: const BoxDecoration(),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'xqu0vs6v' /* My Style */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n950,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/Backward-2.png',
                                width: 39.0,
                                height: 24.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 9.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).n950,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 9.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'vv2sac76' /* My Interests */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n950,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/Backward-2.png',
                                width: 39.0,
                                height: 24.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 100.0,
                    height: 40.0,
                    decoration: const BoxDecoration(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
