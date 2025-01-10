import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/how_to_guide/how_to_guide_widget.dart';
import '/components/navbar/navbar_widget.dart';
import '/components/options/options_widget.dart';
import '/components/review_comp/review_comp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().menu = false;
      FFAppState().navbarstate = 1;
      safeSetState(() {});
      _model.imgout = await ReviewMediaTable().queryRows(
        queryFn: (q) => q.order('id', ascending: true),
      );
      FFAppState().homeimg = _model.imgout!.firstOrNull!.mediaUrl!;
      safeSetState(() {});
      if (animationsMap['imageOnActionTriggerAnimation2'] != null) {
        await animationsMap['imageOnActionTriggerAnimation2']!
            .controller
            .forward(from: 0.0);
      }
      if (animationsMap['imageOnActionTriggerAnimation1'] != null) {
        await animationsMap['imageOnActionTriggerAnimation1']!
            .controller
            .forward(from: 0.0);
      }
    });

    animationsMap.addAll({
      'imageOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
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
      'imageOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
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
      'optionsOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
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

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 12.0,
                          height: 48.0,
                          decoration: const BoxDecoration(),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().menu = true;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 24.0,
                                  height: 24.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/menu.png',
                                      ).image,
                                    ),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/ModieLogoWhite.png',
                                  width: 77.54,
                                  height: 24.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              18.0, 14.0, 18.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Transform.rotate(
                                angle: 270.0 * (math.pi / 180),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '5pw8hpwk' /* 01 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).m500,
                                        fontSize: 36.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 12.0, 18.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'uojdqp8w' /* PRODUCT GUIDES */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'PP Hatton',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 6.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FutureBuilder<ApiCallResponse>(
                                future: StorefrontAPIGroup.getBlogCall.call(),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return const Center(
                                      child: SizedBox(
                                        width: 24.0,
                                        height: 24.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  final stackGetBlogResponse = snapshot.data!;

                                  return SizedBox(
                                    width: double.infinity,
                                    height: 536.0,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.network(
                                              (StorefrontAPIGroup.getBlogCall
                                                  .images(
                                                    stackGetBlogResponse
                                                        .jsonBody,
                                                  )!
                                                  .elementAtOrNull(
                                                      _model.prodguidenumb!))!,
                                              width: double.infinity,
                                              height: 520.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'imageOnActionTriggerAnimation1']!,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-0.03, 0.88),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'ExploreArticlesPage',
                                                queryParameters: {
                                                  'title': serializeParam(
                                                    StorefrontAPIGroup
                                                        .getBlogCall
                                                        .names(
                                                          stackGetBlogResponse
                                                              .jsonBody,
                                                        )
                                                        ?.elementAtOrNull(_model
                                                            .prodguidenumb!),
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ytk7cpf4' /* VIEW MORE */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .m500,
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        if (StorefrontAPIGroup.getBlogCall
                                                .ids(
                                                  stackGetBlogResponse.jsonBody,
                                                )!
                                                .length >
                                            1)
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.91, -0.07),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 8.0,
                                              buttonSize: 40.0,
                                              icon: FaIcon(
                                                FontAwesomeIcons.angleLeft,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .m500,
                                                size: 14.0,
                                              ),
                                              onPressed: () async {
                                                if (_model.prodguidenumb == 0) {
                                                  _model.prodguidenumb =
                                                      StorefrontAPIGroup
                                                              .getBlogCall
                                                              .ids(
                                                                stackGetBlogResponse
                                                                    .jsonBody,
                                                              )!
                                                              .length -
                                                          1;
                                                  safeSetState(() {});
                                                } else {
                                                  _model.prodguidenumb =
                                                      _model.prodguidenumb! +
                                                          -1;
                                                  safeSetState(() {});
                                                }

                                                if (animationsMap[
                                                        'imageOnActionTriggerAnimation1'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'imageOnActionTriggerAnimation1']!
                                                      .controller
                                                      .forward(from: 0.0);
                                                }
                                              },
                                            ),
                                          ),
                                        if (StorefrontAPIGroup.getBlogCall
                                                .ids(
                                                  stackGetBlogResponse.jsonBody,
                                                )!
                                                .length >
                                            1)
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                0.92, -0.06),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 8.0,
                                              buttonSize: 40.0,
                                              icon: FaIcon(
                                                FontAwesomeIcons.angleRight,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .m500,
                                                size: 14.0,
                                              ),
                                              onPressed: () async {
                                                if (_model.prodguidenumb ==
                                                    (StorefrontAPIGroup
                                                            .getBlogCall
                                                            .ids(
                                                              stackGetBlogResponse
                                                                  .jsonBody,
                                                            )!
                                                            .length -
                                                        1)) {
                                                  _model.prodguidenumb = 0;
                                                  safeSetState(() {});
                                                } else {
                                                  _model.prodguidenumb =
                                                      _model.prodguidenumb! + 1;
                                                  safeSetState(() {});
                                                }

                                                if (animationsMap[
                                                        'imageOnActionTriggerAnimation1'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'imageOnActionTriggerAnimation1']!
                                                      .controller
                                                      .forward(from: 0.0);
                                                }
                                              },
                                            ),
                                          ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.06, -0.03),
                                          child: Container(
                                            width: 280.0,
                                            height: 396.0,
                                            decoration: const BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    StorefrontAPIGroup
                                                        .getBlogCall
                                                        .names(
                                                          stackGetBlogResponse
                                                              .jsonBody,
                                                        )
                                                        ?.elementAtOrNull(_model
                                                            .prodguidenumb!),
                                                    '- - ',
                                                  ),
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'PP Hatton',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .m500,
                                                        fontSize: 28.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              18.0, 20.0, 18.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Transform.rotate(
                                angle: 270.0 * (math.pi / 180),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'odt26hb6' /* 02 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).m500,
                                        fontSize: 36.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              28.0, 12.0, 18.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '2trqziu0' /* MODIERS REVIEWS */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 6.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                height: 520.0,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.network(
                                          FFAppState().homeimg,
                                          width: double.infinity,
                                          height: 520.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'imageOnActionTriggerAnimation2']!,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-0.02, 0.9),
                                      child: Builder(
                                        builder: (context) => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      const AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(
                                                              dialogContext)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: const ReviewCompWidget(),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'udg3o83o' /* VIEW REVIEW */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .m500,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-0.91, -0.07),
                                      child: FlutterFlowIconButton(
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        icon: FaIcon(
                                          FontAwesomeIcons.angleLeft,
                                          color:
                                              FlutterFlowTheme.of(context).n950,
                                          size: 14.0,
                                        ),
                                        onPressed: () async {
                                          if (FFAppState().homeimgnum == 0) {
                                            FFAppState().homeimgnum =
                                                _model.imgout!.length - 1;
                                            FFAppState().homeimg = _model
                                                .imgout!
                                                .elementAtOrNull(
                                                    FFAppState().homeimgnum)!
                                                .mediaUrl!;
                                            safeSetState(() {});
                                            if (animationsMap[
                                                    'imageOnActionTriggerAnimation2'] !=
                                                null) {
                                              animationsMap[
                                                      'imageOnActionTriggerAnimation2']!
                                                  .controller
                                                  .forward(from: 0.0);
                                            }
                                          } else {
                                            FFAppState().homeimgnum =
                                                FFAppState().homeimgnum + -1;
                                            FFAppState().homeimg = _model
                                                .imgout!
                                                .elementAtOrNull(
                                                    FFAppState().homeimgnum)!
                                                .mediaUrl!;
                                            safeSetState(() {});
                                            if (animationsMap[
                                                    'imageOnActionTriggerAnimation2'] !=
                                                null) {
                                              animationsMap[
                                                      'imageOnActionTriggerAnimation2']!
                                                  .controller
                                                  .forward(from: 0.0);
                                            }
                                          }
                                        },
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.92, -0.06),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        icon: FaIcon(
                                          FontAwesomeIcons.angleRight,
                                          color:
                                              FlutterFlowTheme.of(context).n950,
                                          size: 14.0,
                                        ),
                                        onPressed: () async {
                                          if (FFAppState().homeimgnum ==
                                              (_model.imgout!.length - 1)) {
                                            FFAppState().homeimgnum = 0;
                                            FFAppState().homeimg = _model
                                                .imgout!
                                                .elementAtOrNull(
                                                    FFAppState().homeimgnum)!
                                                .mediaUrl!;
                                            safeSetState(() {});
                                            if (animationsMap[
                                                    'imageOnActionTriggerAnimation2'] !=
                                                null) {
                                              animationsMap[
                                                      'imageOnActionTriggerAnimation2']!
                                                  .controller
                                                  .forward(from: 0.0);
                                            }
                                          } else {
                                            FFAppState().homeimgnum =
                                                FFAppState().homeimgnum + 1;
                                            FFAppState().homeimg = _model
                                                .imgout!
                                                .elementAtOrNull(
                                                    FFAppState().homeimgnum)!
                                                .mediaUrl!;
                                            safeSetState(() {});
                                            if (animationsMap[
                                                    'imageOnActionTriggerAnimation2'] !=
                                                null) {
                                              animationsMap[
                                                      'imageOnActionTriggerAnimation2']!
                                                  .controller
                                                  .forward(from: 0.0);
                                            }
                                          }
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 100.0,
                            decoration: const BoxDecoration(),
                            child: FutureBuilder<List<ReviewMediaRow>>(
                              future: ReviewMediaTable().queryRows(
                                queryFn: (q) => q.order('id', ascending: true),
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
                                            AlwaysStoppedAnimation<Color>(
                                          Color(0xFFA20A05),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<ReviewMediaRow> rowReviewMediaRowList =
                                    snapshot.data!;

                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: List.generate(
                                      rowReviewMediaRowList.length, (rowIndex) {
                                    final rowReviewMediaRow =
                                        rowReviewMediaRowList[rowIndex];
                                    return Opacity(
                                      opacity: FFAppState().homeimg ==
                                              rowReviewMediaRow.mediaUrl
                                          ? 1.0
                                          : 0.5,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 10.0, 5.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().homeimg =
                                                rowReviewMediaRow.mediaUrl!;
                                            safeSetState(() {});
                                            if (animationsMap[
                                                    'imageOnActionTriggerAnimation2'] !=
                                                null) {
                                              await animationsMap[
                                                      'imageOnActionTriggerAnimation2']!
                                                  .controller
                                                  .forward(from: 0.0);
                                            }
                                          },
                                          child: Container(
                                            width: 58.0,
                                            height: 81.0,
                                            decoration: BoxDecoration(
                                              color: FFAppState().homeimg ==
                                                      rowReviewMediaRow.mediaUrl
                                                  ? FlutterFlowTheme.of(context)
                                                      .m500
                                                  : Colors.transparent,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(1.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    child: Image.network(
                                                      rowReviewMediaRow
                                                          .mediaUrl!,
                                                      width: 58.0,
                                                      height: 79.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              18.0, 20.0, 18.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Transform.rotate(
                                angle: 270.0 * (math.pi / 180),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'rucauow1' /* 03 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).m500,
                                        fontSize: 36.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 12.0, 18.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '3320bxlq' /* HOTTEST PRODUCTS */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'PP Hatton',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 260.0,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 108.0,
                                    height: 220.0,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'assets/images/woman-spa-2.png',
                                            width: 108.0,
                                            height: 164.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 12.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '1xnlgzx4' /* A.L.C. */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n100,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 108.0,
                                    height: 220.0,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'assets/images/woman-spa-3.png',
                                            width: 108.0,
                                            height: 164.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 12.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'vjamkexq' /* NAME OF THE BRAND */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n100,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 12.0)),
                              ),
                              Container(
                                width: 100.0,
                                height: 20.0,
                                decoration: const BoxDecoration(),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'hrivnh5g' /* VIEW MORE */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).m500,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              18.0, 20.0, 18.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Transform.rotate(
                                angle: 270.0 * (math.pi / 180),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'o77uaxvc' /* 04 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).m500,
                                        fontSize: 36.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 12.0, 18.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('OurBrands');
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'r1zmhjo1' /* PARTNER BRANDS */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'PP Hatton',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
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
                        Container(
                          width: 100.0,
                          height: 40.0,
                          decoration: const BoxDecoration(),
                        ),
                      ],
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.navbarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const NavbarWidget(),
                ),
              ],
            ),
            if (FFAppState().menu == true)
              wrapWithModel(
                model: _model.optionsModel,
                updateCallback: () => safeSetState(() {}),
                child: const OptionsWidget(),
              ).animateOnPageLoad(animationsMap['optionsOnPageLoadAnimation']!),
            if (FFAppState().guide != 7)
              wrapWithModel(
                model: _model.howToGuideModel,
                updateCallback: () => safeSetState(() {}),
                child: const HowToGuideWidget(),
              ),
          ],
        ),
      ),
    );
  }
}
