import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'quiz_shop_model.dart';
export 'quiz_shop_model.dart';

class QuizShopWidget extends StatefulWidget {
  const QuizShopWidget({
    super.key,
    required this.type,
  });

  final String? type;

  @override
  State<QuizShopWidget> createState() => _QuizShopWidgetState();
}

class _QuizShopWidgetState extends State<QuizShopWidget>
    with TickerProviderStateMixin {
  late QuizShopModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasContainerTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizShopModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.imgload = true;
      safeSetState(() {});
      await Future.delayed(const Duration(milliseconds: 750));
      _model.imgload = false;
      safeSetState(() {});
      if (animationsMap['containerOnActionTriggerAnimation'] != null) {
        animationsMap['containerOnActionTriggerAnimation']!.controller.reset();
      }
    });

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
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'progressBarOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
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
        queryFn: (q) => q.eqOrNull(
          'id',
          FFAppState().quizids.elementAtOrNull(FFAppState().i),
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).m200,
            body: const Center(
              child: SizedBox(
                width: 24.0,
                height: 24.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFA20A05),
                  ),
                ),
              ),
            ),
          );
        }
        List<QuizRow> quizShopQuizRowList = snapshot.data!;

        final quizShopQuizRow =
            quizShopQuizRowList.isNotEmpty ? quizShopQuizRowList.first : null;

        return WillPopScope(
          onWillPop: () async => false,
          child: Scaffold(
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
                          height: 48.0,
                          decoration: const BoxDecoration(),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    1.0, 0.0, 0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    FFIcons.kvectorConverted,
                                    color: FlutterFlowTheme.of(context).n950,
                                    size: 14.0,
                                  ),
                                  onPressed: () async {
                                    context.goNamed(
                                      'ShopScreenProducts',
                                      queryParameters: {
                                        'type': serializeParam(
                                          widget.type,
                                          ParamType.String,
                                        ),
                                        'requeststatus': serializeParam(
                                          true,
                                          ParamType.bool,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );

                                    FFAppState().quiz = [];
                                    FFAppState().quizids = [];
                                  },
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
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Transform.rotate(
                                angle: 269.0 * (math.pi / 180),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '0${valueOrDefault<String>(
                                          functions.add1(FFAppState().i),
                                          '--',
                                        )}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .m500,
                                              fontSize: 36.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      TextSpan(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'wgcxlljq' /*  —  */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Montserrat',
                                          color:
                                              FlutterFlowTheme.of(context).n950,
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
                                              FlutterFlowTheme.of(context).n950,
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
                                              FlutterFlowTheme.of(context).n950,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        quizShopQuizRow?.question,
                                        '- -',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'PP Hatton',
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            fontSize: 32.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Opacity(
                                      opacity: quizShopQuizRow?.question ==
                                              'WHAT IS YOUR BUDGET?'
                                          ? 0.0
                                          : 1.0,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: Text(
                                          'Please select up to ${quizShopQuizRow?.minqstnumb?.toString()} options.',
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
                                    ),
                                  ],
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
                            child: Builder(
                              builder: (context) {
                                if ((_model.imgload == false) &&
                                    (quizShopQuizRow?.question !=
                                        'WHAT IS YOUR BUDGET?')) {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 8.0, 0.0),
                                    child: FutureBuilder<List<OptionsRow>>(
                                      future: OptionsTable().queryRows(
                                        queryFn: (q) => q
                                            .eqOrNull(
                                              'quiz_id',
                                              quizShopQuizRow?.id,
                                            )
                                            .order('Order', ascending: true),
                                        limit: 6,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return const Center(
                                            child: SizedBox(
                                              width: 24.0,
                                              height: 24.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  Color(0xFFA20A05),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<OptionsRow>
                                            staggeredViewOptionsRowList =
                                            snapshot.data!;

                                        return MasonryGridView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          gridDelegate:
                                              const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                          ),
                                          crossAxisSpacing: 10.0,
                                          itemCount: staggeredViewOptionsRowList
                                              .length,
                                          itemBuilder:
                                              (context, staggeredViewIndex) {
                                            final staggeredViewOptionsRow =
                                                staggeredViewOptionsRowList[
                                                    staggeredViewIndex];
                                            return Container(
                                              width: 108.67,
                                              height: 240.0,
                                              decoration: const BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '0${valueOrDefault<String>(
                                                      functions.add1(
                                                          staggeredViewIndex),
                                                      '- -',
                                                    )}',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: FFAppState()
                                                                      .quiz
                                                                      .elementAtOrNull(
                                                                          FFAppState()
                                                                              .i)!
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
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (FFAppState()
                                                          .quiz
                                                          .elementAtOrNull(
                                                              FFAppState().i)!
                                                          .options
                                                          .contains(
                                                              staggeredViewOptionsRow
                                                                  .optionText)) {
                                                        FFAppState()
                                                            .updateQuizAtIndex(
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
                                                                .quiz
                                                                .elementAtOrNull(
                                                                    FFAppState()
                                                                        .i)
                                                                ?.options
                                                                .length ==
                                                            quizShopQuizRow
                                                                ?.minqstnumb) {
                                                          if (animationsMap[
                                                                  'textOnActionTriggerAnimation'] !=
                                                              null) {
                                                            await animationsMap[
                                                                    'textOnActionTriggerAnimation']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          return;
                                                        }
                                                        FFAppState()
                                                            .updateQuizAtIndex(
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
                                                                .quiz
                                                                .elementAtOrNull(
                                                                    FFAppState()
                                                                        .i)!
                                                                .options
                                                                .contains(
                                                                    staggeredViewOptionsRow
                                                                        .optionText)
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .m500
                                                            : Colors
                                                                .transparent,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(2.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
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
                                                  ).animateOnActionTrigger(
                                                      animationsMap[
                                                          'containerOnActionTriggerAnimation']!,
                                                      hasBeenTriggered:
                                                          hasContainerTriggered),
                                                  Expanded(
                                                    child: Text(
                                                      staggeredViewOptionsRow
                                                          .optionText,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: FFAppState()
                                                                    .quiz
                                                                    .elementAtOrNull(
                                                                        FFAppState()
                                                                            .i)!
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
                                                            fontWeight:
                                                                FontWeight.w600,
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
                                  );
                                } else if ((_model.imgload == false) &&
                                    (quizShopQuizRow?.question ==
                                        'WHAT IS YOUR BUDGET?')) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        height: 100.0,
                                        child: custom_widgets.RangeSliderWidget(
                                          width: double.infinity,
                                          height: 100.0,
                                          min: 10.0,
                                          max: 1000.0,
                                          start: 10.0,
                                          end: 1000.0,
                                          divisions: 1000,
                                          textColor:
                                              FlutterFlowTheme.of(context).m500,
                                          sliderColor:
                                              FlutterFlowTheme.of(context).m500,
                                          thumbColor:
                                              FlutterFlowTheme.of(context).m500,
                                          inactiveTrackColor: const Color(0x34A20A05),
                                          showLabels: false,
                                          showRangeLabels: true,
                                          minLabel: '10',
                                          maxLabel: '1000',
                                          labelFontSize: 12.0,
                                          valueFontSize: 12.0,
                                          isEnabled: true,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                width: 100.0,
                                                height: 56.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0x00FFFFFF),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '5uj0ob2x' /* Price from */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'PP Hatton',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .n950,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                    Container(
                                                      width: 5.0,
                                                      height: 5.0,
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            Color(0x00FFFFFF),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          functions
                                                              .round(
                                                                  FFAppState()
                                                                      .start)
                                                              .toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .n800,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        Icon(
                                                          Icons.currency_pound,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .n800,
                                                          size: 16.0,
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      width: 5.0,
                                                      height: 5.0,
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            Color(0x00FFFFFF),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .n950,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                width: 100.0,
                                                height: 56.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0x00FFFFFF),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '4fvh449t' /* Price from */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'PP Hatton',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .n950,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                    Container(
                                                      width: 5.0,
                                                      height: 5.0,
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            Color(0x00FFFFFF),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          functions
                                                              .round(
                                                                  FFAppState()
                                                                      .end)
                                                              .toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .n800,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        Icon(
                                                          Icons.currency_pound,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .n800,
                                                          size: 16.0,
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      width: 5.0,
                                                      height: 5.0,
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            Color(0x00FFFFFF),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: double.infinity,
                                                      height: 1.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .n950,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ].divide(const SizedBox(width: 16.0)),
                                        ),
                                      ),
                                    ],
                                  );
                                } else {
                                  return CircularPercentIndicator(
                                    percent: 0.5,
                                    radius: 20.0,
                                    lineWidth: 3.0,
                                    animation: true,
                                    animateFromLastPercent: true,
                                    progressColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ).animateOnPageLoad(animationsMap[
                                      'progressBarOnPageLoadAnimation']!);
                                }
                              },
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
                          if ((quizShopQuizRow?.question !=
                                  'WHAT IS YOUR BUDGET?') &&
                              (((FFAppState()
                                              .quiz
                                              .elementAtOrNull(FFAppState().i)!
                                              .options
                                              .length >
                                          quizShopQuizRow!.minqstnumb!) ||
                                      (FFAppState()
                                              .quiz
                                              .elementAtOrNull(FFAppState().i)
                                              ?.options.isEmpty)) ==
                                  true)) {
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
                            return InkWell(
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

                                    context.pushNamed(
                                      'ShopScreenProducts',
                                      queryParameters: {
                                        'type': serializeParam(
                                          widget.type,
                                          ParamType.String,
                                        ),
                                        'requeststatus': serializeParam(
                                          false,
                                          ParamType.bool,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    safeSetState(() {});

                                    context.pushNamed(
                                      'QuizShop',
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
          ),
        );
      },
    );
  }
}
