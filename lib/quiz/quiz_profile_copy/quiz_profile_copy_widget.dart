import '/backend/supabase/supabase.dart';
import '/components/save_quiz/save_quiz_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'quiz_profile_copy_model.dart';
export 'quiz_profile_copy_model.dart';

class QuizProfileCopyWidget extends StatefulWidget {
  const QuizProfileCopyWidget({
    super.key,
    required this.type,
  });

  final String? type;

  @override
  State<QuizProfileCopyWidget> createState() => _QuizProfileCopyWidgetState();
}

class _QuizProfileCopyWidgetState extends State<QuizProfileCopyWidget>
    with TickerProviderStateMixin {
  late QuizProfileCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizProfileCopyModel());

    animationsMap.addAll({
      'textOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 910.0.ms,
            hz: 4,
            offset: const Offset(4.0, 0.0),
            rotation: 0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<QuizRow>>(
      future: QuizTable().querySingleRow(
        queryFn: (q) => q.eq(
          'id',
          FFAppState().quizids[FFAppState().i],
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
        List<QuizRow> quizProfileCopyQuizRowList = snapshot.data!;

        final quizProfileCopyQuizRow = quizProfileCopyQuizRowList.isNotEmpty
            ? quizProfileCopyQuizRowList.first
            : null;

        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).m200,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 100.0,
                        height: 45.0,
                        decoration: const BoxDecoration(),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
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
                                context.goNamed(
                                  'MyModie',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );

                                FFAppState().quiz = [];
                                FFAppState().quizids = [];
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
                              valueOrDefault<String>(
                                widget.type,
                                '- -',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
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
                        height: 25.0,
                        decoration: const BoxDecoration(),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 230.0,
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 230.0,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Transform.rotate(
                                      angle: 269.0 * (math.pi / 180),
                                      origin: const Offset(-11.0, 16.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '0${valueOrDefault<String>(
                                                functions.add1(FFAppState().i),
                                                '--',
                                              )}',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .m500,
                                                    fontSize: 36.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            TextSpan(
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '8cqahes3' /*  —  */,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .n950,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 36.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '0${FFAppState().quizids.length.toString()}',
                                              style: GoogleFonts.getFont(
                                                'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .n950,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 36.0,
                                              ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .n950,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.13, 0.0),
                              child: Container(
                                width: 230.0,
                                height: double.infinity,
                                decoration: const BoxDecoration(),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          quizProfileCopyQuizRow?.question,
                                          '- -',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'PP Hatton',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                              fontSize: 32.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: Text(
                                          'Please select up to ${quizProfileCopyQuizRow?.minqstnumb?.toString()} options',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .n700,
                                                letterSpacing: 0.0,
                                              ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'textOnActionTriggerAnimation']!,
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
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: double.infinity,
                          height: 550.0,
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 8.0, 0.0),
                            child: FutureBuilder<List<OptionsRow>>(
                              future: OptionsTable().queryRows(
                                queryFn: (q) => q.eq(
                                  'quiz_id',
                                  quizProfileCopyQuizRow?.id,
                                ),
                                limit: 6,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return const Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          Color(0xFFA20A05),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<OptionsRow> staggeredViewOptionsRowList =
                                    snapshot.data!;

                                return MasonryGridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                  ),
                                  crossAxisSpacing: 10.0,
                                  itemCount: staggeredViewOptionsRowList.length,
                                  itemBuilder: (context, staggeredViewIndex) {
                                    final staggeredViewOptionsRow =
                                        staggeredViewOptionsRowList[
                                            staggeredViewIndex];
                                    return Container(
                                      width: 108.67,
                                      height: 230.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '0${valueOrDefault<String>(
                                              functions
                                                  .add1(staggeredViewIndex),
                                              '- -',
                                            )}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FFAppState()
                                                          .quiz[FFAppState().i]
                                                          .options
                                                          .contains(
                                                              staggeredViewOptionsRow
                                                                  .optionText)
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .m500
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .n950,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (FFAppState()
                                                  .quiz[FFAppState().i]
                                                  .options
                                                  .contains(
                                                      staggeredViewOptionsRow
                                                          .optionText)) {
                                                FFAppState().updateQuizAtIndex(
                                                  FFAppState().i,
                                                  (e) => e
                                                    ..updateOptions(
                                                      (e) => e.remove(
                                                          staggeredViewOptionsRow
                                                              .optionText),
                                                    ),
                                                );
                                                safeSetState(() {});
                                              } else {
                                                if (FFAppState()
                                                        .quiz[FFAppState().i]
                                                        .options
                                                        .length ==
                                                    quizProfileCopyQuizRow
                                                        ?.minqstnumb) {
                                                  if (animationsMap[
                                                          'textOnActionTriggerAnimation'] !=
                                                      null) {
                                                    await animationsMap[
                                                            'textOnActionTriggerAnimation']!
                                                        .controller
                                                        .forward(from: 0.0);
                                                  }
                                                  return;
                                                }
                                                FFAppState().updateQuizAtIndex(
                                                  FFAppState().i,
                                                  (e) => e
                                                    ..updateOptions(
                                                      (e) => e.add(
                                                          staggeredViewOptionsRow
                                                              .optionText),
                                                    ),
                                                );
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: FFAppState()
                                                        .quiz[FFAppState().i]
                                                        .options
                                                        .contains(
                                                            staggeredViewOptionsRow
                                                                .optionText)
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .m500
                                                    : const Color(0x0D000000),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(2.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                  child: Image.network(
                                                    staggeredViewOptionsRow
                                                        .image!,
                                                    width: 107.0,
                                                    height: 163.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              staggeredViewOptionsRow
                                                  .optionText,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FFAppState()
                                                            .quiz[
                                                                FFAppState().i]
                                                            .options
                                                            .contains(
                                                                staggeredViewOptionsRow
                                                                    .optionText)
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .m500
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .n900,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).n950,
                ),
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (FFAppState().i != 0)
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().i = FFAppState().i + -1;
                          safeSetState(() {});
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Group_1903-3.png',
                            width: 79.8,
                            height: 34.43,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    Container(
                      width: 100.0,
                      height: 30.0,
                      decoration: const BoxDecoration(),
                    ),
                    Builder(
                      builder: (context) {
                        if ((FFAppState().quiz[FFAppState().i].options.length >
                                quizProfileCopyQuizRow!.minqstnumb!) ||
                            (FFAppState().quiz[FFAppState().i].options.isEmpty)) {
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (animationsMap[
                                      'textOnActionTriggerAnimation'] !=
                                  null) {
                                await animationsMap[
                                        'textOnActionTriggerAnimation']!
                                    .controller
                                    .forward(from: 0.0);
                              }
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Group_1904.png',
                                width: 79.8,
                                height: 34.43,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        } else {
                          return Builder(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (FFAppState().i <
                                    FFAppState().quizids.length) {
                                  FFAppState().i = FFAppState().i + 1;
                                  if (FFAppState().i ==
                                      FFAppState().quizids.length) {
                                    FFAppState().i = FFAppState().i + -1;
                                    safeSetState(() {});
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: const AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: const SaveQuizWidget(),
                                        );
                                      },
                                    );
                                  } else {
                                    safeSetState(() {});

                                    context.pushNamed(
                                      'QuizProfileCopy',
                                      queryParameters: {
                                        'type': serializeParam(
                                          widget.type,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
                                }
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Group_1903-2.png',
                                  width: 79.8,
                                  height: 34.43,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ].divide(const SizedBox(width: 19.0)),
                ),
              ),
              Container(
                width: 100.0,
                height: 40.0,
                decoration: const BoxDecoration(),
              ),
            ],
          ),
        );
      },
    );
  }
}
