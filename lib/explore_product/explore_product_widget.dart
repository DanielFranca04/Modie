import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/add_to_cart_widget.dart';
import '/components/empty_reviews_widget.dart';
import '/components/review_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math' as math;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'explore_product_model.dart';
export 'explore_product_model.dart';

class ExploreProductWidget extends StatefulWidget {
  const ExploreProductWidget({
    super.key,
    required this.idProdShopify,
    required this.idProdInternal,
  });

  final String? idProdShopify;
  final int? idProdInternal;

  @override
  State<ExploreProductWidget> createState() => _ExploreProductWidgetState();
}

class _ExploreProductWidgetState extends State<ExploreProductWidget>
    with TickerProviderStateMixin {
  late ExploreProductModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasImageTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExploreProductModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.checkReviews = await ReviewTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'product_id',
          widget.idProdInternal,
        ),
      );
      _model.apiResultte3 = await StorefrontAPIGroup.getColorsItemCall.call(
        idprod: widget.idProdShopify,
      );

      FFAppState().color = StorefrontAPIGroup.getColorsItemCall
          .colors(
            (_model.apiResultte3?.jsonBody ?? ''),
          )!
          .firstOrNull!;
      safeSetState(() {});
      while (FFAppState().colori <
          StorefrontAPIGroup.getColorsItemCall
              .colors(
                (_model.apiResultte3?.jsonBody ?? ''),
              )!
              .length) {
        FFAppState().addToItemimages(ProductImagesStruct(
          color: StorefrontAPIGroup.getColorsItemCall
              .colors(
                (_model.apiResultte3?.jsonBody ?? ''),
              )
              ?.elementAtOrNull(FFAppState().colori),
        ));
        safeSetState(() {});
        FFAppState().colori = FFAppState().colori + 1;
        safeSetState(() {});
      }
      FFAppState().colori = 0;
      FFAppState().iimg = 0;
      safeSetState(() {});
      while (FFAppState().iimg <
          StorefrontAPIGroup.getColorsItemCall
              .images(
                (_model.apiResultte3?.jsonBody ?? ''),
              )!
              .length) {
        if (FFAppState()
                .itemimages
                .elementAtOrNull(FFAppState().colori)
                ?.color ==
            (StorefrontAPIGroup.getColorsItemCall
                .imageColor(
                  (_model.apiResultte3?.jsonBody ?? ''),
                )
                ?.elementAtOrNull(FFAppState().iimg))) {
          FFAppState().updateItemimagesAtIndex(
            FFAppState().colori,
            (e) => e..index = FFAppState().iimg,
          );
          safeSetState(() {});
          FFAppState().colori = FFAppState().colori + 1;
          FFAppState().iimg = 0;
          safeSetState(() {});
        }
        FFAppState().iimg = FFAppState().iimg + 1;
        safeSetState(() {});
      }
    });

    animationsMap.addAll({
      'imageOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 450.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'progressBarOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnActionTriggerAnimation': AnimationInfo(
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
      'choiceChipsOnActionTriggerAnimation': AnimationInfo(
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

    return FutureBuilder<ApiCallResponse>(
      future: StorefrontAPIGroup.getItemShopifyCall.call(
        idprod: widget.idProdShopify,
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
        final exploreProductGetItemShopifyResponse = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).m200,
            body: FutureBuilder<List<ProductRow>>(
              future: ProductTable().querySingleRow(
                queryFn: (q) => q.eqOrNull(
                  'id_shopify',
                  widget.idProdShopify,
                ),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return const Center(
                    child: SizedBox(
                      width: 24.0,
                      height: 24.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color(0xFFA20A05),
                        ),
                      ),
                    ),
                  );
                }
                List<ProductRow> columnProductRowList = snapshot.data!;

                final columnProductRow = columnProductRowList.isNotEmpty
                    ? columnProductRowList.first
                    : null;

                return Column(
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
                                  0.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        1.0, 0.0, 0.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 8.0,
                                      buttonSize: 40.0,
                                      fillColor: const Color(0x00A20A05),
                                      icon: Icon(
                                        FFIcons.kvectorConverted,
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        size: 14.0,
                                      ),
                                      onPressed: () async {
                                        context.safePop();
                                        FFAppState().imgi = 0;
                                        FFAppState().Product = ProductStruct();
                                        FFAppState().color = '';
                                        FFAppState().colori = 0;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'd0kltzcu' /* MODIE REVIEWS */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'PP Hatton',
                                          color:
                                              FlutterFlowTheme.of(context).n950,
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
                              height: 15.0,
                              decoration: const BoxDecoration(),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 280.0,
                                decoration: const BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          SizedBox(
                                            width: double.infinity,
                                            height: 264.26,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 264.26,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .n950,
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                  child: Builder(
                                                    builder: (context) {
                                                      if (FFAppState()
                                                              .stateimg ==
                                                          true) {
                                                        return ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                          child: Image.network(
                                                            (StorefrontAPIGroup
                                                                .getItemShopifyCall
                                                                .images(
                                                                  exploreProductGetItemShopifyResponse
                                                                      .jsonBody,
                                                                )!
                                                                .elementAtOrNull(
                                                                    FFAppState()
                                                                        .imgi))!,
                                                            width:
                                                                double.infinity,
                                                            height:
                                                                double.infinity,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ).animateOnActionTrigger(
                                                            animationsMap[
                                                                'imageOnActionTriggerAnimation']!,
                                                            hasBeenTriggered:
                                                                hasImageTriggered);
                                                      } else {
                                                        return CircularPercentIndicator(
                                                          percent: 0.5,
                                                          radius: 25.0,
                                                          lineWidth: 2.0,
                                                          animation: true,
                                                          animateFromLastPercent:
                                                              true,
                                                          progressColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                        ).animateOnActionTrigger(
                                                          animationsMap[
                                                              'progressBarOnActionTriggerAnimation']!,
                                                        );
                                                      }
                                                    },
                                                  ),
                                                ),
                                                if (StorefrontAPIGroup
                                                        .getItemShopifyCall
                                                        .images(
                                                          exploreProductGetItemShopifyResponse
                                                              .jsonBody,
                                                        )
                                                        ?.length !=
                                                    1)
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.01, -0.05),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (FFAppState().imgi ==
                                                            0) {
                                                          FFAppState().imgi =
                                                              StorefrontAPIGroup
                                                                      .getItemShopifyCall
                                                                      .images(
                                                                        exploreProductGetItemShopifyResponse
                                                                            .jsonBody,
                                                                      )!
                                                                      .length -
                                                                  1;
                                                          safeSetState(() {});
                                                        } else {
                                                          FFAppState().imgi =
                                                              FFAppState()
                                                                      .imgi +
                                                                  -1;
                                                          safeSetState(() {});
                                                        }
                                                      },
                                                      child: Container(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Icon(
                                                              FFIcons
                                                                  .kvectorConverted,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .n950,
                                                              size: 14.0,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                if (StorefrontAPIGroup
                                                        .getItemShopifyCall
                                                        .images(
                                                          exploreProductGetItemShopifyResponse
                                                              .jsonBody,
                                                        )
                                                        ?.length !=
                                                    1)
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.02, -0.05),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (FFAppState().imgi ==
                                                            (StorefrontAPIGroup
                                                                    .getItemShopifyCall
                                                                    .images(
                                                                      exploreProductGetItemShopifyResponse
                                                                          .jsonBody,
                                                                    )!
                                                                    .length -
                                                                1)) {
                                                          FFAppState().imgi = 0;
                                                          safeSetState(() {});
                                                        } else {
                                                          FFAppState().imgi =
                                                              FFAppState()
                                                                      .imgi +
                                                                  1;
                                                          safeSetState(() {});
                                                        }
                                                      },
                                                      child: Container(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Transform.rotate(
                                                              angle: 180.0 *
                                                                  (math.pi /
                                                                      180),
                                                              child: Icon(
                                                                FFIcons
                                                                    .kvectorConverted,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .n950,
                                                                size: 14.0,
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
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            13.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 100.0,
                                              height: 12.0,
                                              decoration: const BoxDecoration(),
                                            ),
                                            RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      '6jf6smmv' /* OVERALL SCORE */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'PP Hatton',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .m500,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'm1bth1hb' /*   (i) */,
                                                    ),
                                                    style: TextStyle(
                                                      fontFamily: 'PP Hatton',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .n500,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.0,
                                                    ),
                                                    mouseCursor:
                                                        SystemMouseCursors
                                                            .click,
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () async {
                                                            context.pushNamed(
                                                              'ScoringGuide',
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    const TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          300),
                                                                ),
                                                              },
                                                            );
                                                          },
                                                  )
                                                ],
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'PP Hatton',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .m500,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 7.0, 0.0, 0.0),
                                              child: RatingBarIndicator(
                                                itemBuilder: (context, index) =>
                                                    Icon(
                                                  FFIcons.kcircConverted,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                                direction: Axis.horizontal,
                                                rating: columnProductRow!
                                                    .overallScore!,
                                                unratedColor:
                                                    FlutterFlowTheme.of(context)
                                                        .n300,
                                                itemCount: 5,
                                                itemSize: 24.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r32hqohd' /* DURABILITY */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .n950,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 7.0,
                                                                0.0, 0.0),
                                                    child: RatingBarIndicator(
                                                      itemBuilder:
                                                          (context, index) =>
                                                              Icon(
                                                        FFIcons.kcircConverted,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                      direction:
                                                          Axis.horizontal,
                                                      rating: columnProductRow
                                                          .durability!,
                                                      unratedColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .n300,
                                                      itemCount: 5,
                                                      itemSize: 12.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pg3s6jqk' /* SIZE & FIT */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .n950,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 7.0,
                                                                0.0, 0.0),
                                                    child: RatingBarIndicator(
                                                      itemBuilder:
                                                          (context, index) =>
                                                              Icon(
                                                        FFIcons.kcircConverted,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                      direction:
                                                          Axis.horizontal,
                                                      rating: columnProductRow
                                                          .sizeFit!,
                                                      unratedColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .n300,
                                                      itemCount: 5,
                                                      itemSize: 12.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'j367vlg4' /* VERSATILITY */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .n950,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 7.0,
                                                                0.0, 0.0),
                                                    child: RatingBarIndicator(
                                                      itemBuilder:
                                                          (context, index) =>
                                                              Icon(
                                                        FFIcons.kcircConverted,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                      direction:
                                                          Axis.horizontal,
                                                      rating: columnProductRow
                                                          .versatility!,
                                                      unratedColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .n300,
                                                      itemCount: 5,
                                                      itemSize: 12.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ybgyl7s8' /* FUNCTIONALITY */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .n950,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 7.0,
                                                                0.0, 0.0),
                                                    child: RatingBarIndicator(
                                                      itemBuilder:
                                                          (context, index) =>
                                                              Icon(
                                                        FFIcons.kcircConverted,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                      direction:
                                                          Axis.horizontal,
                                                      rating: columnProductRow
                                                          .functionality!,
                                                      unratedColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .n300,
                                                      itemCount: 5,
                                                      itemSize: 12.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 7.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'hf085vx9' /* VALUE FOR MONEY */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .n950,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  RatingBarIndicator(
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      FFIcons.kcircConverted,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                    direction: Axis.horizontal,
                                                    rating: columnProductRow
                                                        .valueForMoney!,
                                                    unratedColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .n300,
                                                    itemCount: 5,
                                                    itemSize: 12.0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 100.0,
                                              height: 20.0,
                                              decoration: const BoxDecoration(),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                StorefrontAPIGroup
                                                    .getItemShopifyCall
                                                    .vendor(
                                                  exploreProductGetItemShopifyResponse
                                                      .jsonBody,
                                                ),
                                                '- - ',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .n900,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                StorefrontAPIGroup
                                                    .getItemShopifyCall
                                                    .title(
                                                  exploreProductGetItemShopifyResponse
                                                      .jsonBody,
                                                ),
                                                '- - ',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .n800,
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 2.0, 0.0, 0.0),
                                              child: Text(
                                                '£${StorefrontAPIGroup.getItemShopifyCall.price(
                                                  exploreProductGetItemShopifyResponse
                                                      .jsonBody,
                                                )}',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .m500,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'e90plw5j' /* COLOUR:  */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .n900,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        TextSpan(
                                          text: FFAppState().color,
                                          style: GoogleFonts.getFont(
                                            'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .n900,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.0,
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 6.0, 16.0, 0.0),
                              child: FutureBuilder<ApiCallResponse>(
                                future:
                                    StorefrontAPIGroup.getColorsItemCall.call(
                                  idprod: columnProductRow.idShopify,
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
                                  final rowGetColorsItemResponse =
                                      snapshot.data!;

                                  return Builder(
                                    builder: (context) {
                                      final colors =
                                          StorefrontAPIGroup.getColorsItemCall
                                                  .colors(
                                                    rowGetColorsItemResponse
                                                        .jsonBody,
                                                  )
                                                  ?.toList() ??
                                              [];

                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(colors.length,
                                            (colorsIndex) {
                                          final colorsItem =
                                              colors[colorsIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (StorefrontAPIGroup
                                                      .getItemShopifyCall
                                                      .images(
                                                        exploreProductGetItemShopifyResponse
                                                            .jsonBody,
                                                      )
                                                      ?.length !=
                                                  1) {
                                                FFAppState().color =
                                                    (StorefrontAPIGroup
                                                        .getColorsItemCall
                                                        .colors(
                                                          rowGetColorsItemResponse
                                                              .jsonBody,
                                                        )!
                                                        .elementAtOrNull(
                                                            colorsIndex))!;
                                                FFAppState().imgi = FFAppState()
                                                    .itemimages
                                                    .elementAtOrNull(
                                                        colorsIndex)!
                                                    .index;
                                                safeSetState(() {});
                                                if (animationsMap[
                                                        'imageOnActionTriggerAnimation'] !=
                                                    null) {
                                                  safeSetState(() =>
                                                      hasImageTriggered = true);
                                                  SchedulerBinding.instance
                                                      .addPostFrameCallback(
                                                          (_) async =>
                                                              await animationsMap[
                                                                      'imageOnActionTriggerAnimation']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0));
                                                }
                                              }
                                            },
                                            child: Container(
                                              width: 31.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                border: Border.all(
                                                  color: (StorefrontAPIGroup
                                                              .getColorsItemCall
                                                              .colors(
                                                                rowGetColorsItemResponse
                                                                    .jsonBody,
                                                              )
                                                              ?.elementAtOrNull(
                                                                  colorsIndex)) ==
                                                          FFAppState().color
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .m500
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .n950,
                                                  width: 0.5,
                                                ),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.network(
                                                  (StorefrontAPIGroup
                                                      .getItemShopifyCall
                                                      .images(
                                                        exploreProductGetItemShopifyResponse
                                                            .jsonBody,
                                                      )!
                                                      .elementAtOrNull(
                                                          FFAppState()
                                                              .itemimages
                                                              .elementAtOrNull(
                                                                  colorsIndex)!
                                                              .index))!,
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          );
                                        }).divide(const SizedBox(width: 5.0)),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'rowOnActionTriggerAnimation']!,
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 14.0,
                              decoration: const BoxDecoration(),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'gundkt3s' /* SIZE & FIT:  */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .n900,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        TextSpan(
                                          text: valueOrDefault<String>(
                                            _model.choiceChipsValue == null ||
                                                    _model.choiceChipsValue ==
                                                        ''
                                                ? ' '
                                                : _model.choiceChipsValue,
                                            '- - ',
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .n900,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.0,
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
                                  Expanded(
                                    child: Container(
                                      width: 100.0,
                                      height: 10.0,
                                      decoration: const BoxDecoration(),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'ScoringGuide',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 300),
                                          ),
                                        },
                                      );
                                    },
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '3taxh3gh' /* SIZE GUIDE */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .n900,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'ScoringGuide',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 300),
                                            ),
                                          },
                                        );
                                      },
                                      child: Icon(
                                        Icons.chevron_right_outlined,
                                        color:
                                            FlutterFlowTheme.of(context).n900,
                                        size: 12.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 9.0, 0.0, 0.0),
                                      child: FlutterFlowChoiceChips(
                                        options: StorefrontAPIGroup
                                            .getItemShopifyCall
                                            .sizes(
                                              exploreProductGetItemShopifyResponse
                                                  .jsonBody,
                                            )!
                                            .map((label) => ChipData(label))
                                            .toList(),
                                        onChanged: (val) => safeSetState(() =>
                                            _model.choiceChipsValue =
                                                val?.firstOrNull),
                                        selectedChipStyle: ChipStyle(
                                          backgroundColor: const Color(0x00A20A05),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .m500,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                          iconColor:
                                              FlutterFlowTheme.of(context).m500,
                                          iconSize: 1.0,
                                          elevation: 0.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context).m500,
                                          borderWidth: 0.5,
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        unselectedChipStyle: ChipStyle(
                                          backgroundColor: Colors.transparent,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .n950,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                          iconColor: const Color(0x00000000),
                                          iconSize: 16.0,
                                          elevation: 0.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context).n950,
                                          borderWidth: 0.5,
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        chipSpacing: 4.0,
                                        rowSpacing: 8.0,
                                        multiselect: false,
                                        alignment: WrapAlignment.start,
                                        controller: _model
                                                .choiceChipsValueController ??=
                                            FormFieldController<List<String>>(
                                          [],
                                        ),
                                        wrapped: true,
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'choiceChipsOnActionTriggerAnimation']!,
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
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '1hq4bs69' /* PRODUCT DOSSIER */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'PP Hatton',
                                          color:
                                              FlutterFlowTheme.of(context).m500,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                if (FFAppState().Product.specifics == false) {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 9.0, 16.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        FFAppState().updateProductStruct(
                                          (e) => e..specifics = true,
                                        );
                                        safeSetState(() {});
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 20.0,
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'l5dofwze' /* SPECIFICS */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .n900,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                FaIcon(
                                                  FontAwesomeIcons.angleDown,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  size: 15.0,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                } else {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 9.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              FFAppState().updateProductStruct(
                                                (e) => e..specifics = false,
                                              );
                                              safeSetState(() {});
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '7mbqv4t2' /* SPECIFICS */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .n900,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                FaIcon(
                                                  FontAwesomeIcons.angleUp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  size: 15.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                StorefrontAPIGroup
                                                    .getItemShopifyCall
                                                    .description(
                                                  exploreProductGetItemShopifyResponse
                                                      .jsonBody,
                                                ),
                                                '- - ',
                                              ),
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: const Color(0xFF5D5D5D),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.1,
                                                    lineHeight: 1.4,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            Builder(
                              builder: (context) {
                                if (FFAppState().Product.composition == false) {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 9.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 20.0,
                                      decoration: const BoxDecoration(),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState().updateProductStruct(
                                            (e) => e..composition = true,
                                          );
                                          safeSetState(() {});
                                        },
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1toejhjv' /* COMPOSITION */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .n900,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                FaIcon(
                                                  FontAwesomeIcons.angleDown,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  size: 15.0,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                } else {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 9.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              FFAppState().updateProductStruct(
                                                (e) => e..composition = false,
                                              );
                                              safeSetState(() {});
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'dpdj48q0' /* COMPOSITION */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .n900,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                FaIcon(
                                                  FontAwesomeIcons.angleUp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  size: 15.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                StorefrontAPIGroup
                                                    .getItemShopifyCall
                                                    .composition(
                                                  exploreProductGetItemShopifyResponse
                                                      .jsonBody,
                                                ),
                                                '- - ',
                                              ),
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: const Color(0xFF5D5D5D),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.1,
                                                    lineHeight: 1.4,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            Builder(
                              builder: (context) {
                                if (FFAppState().Product.careInst == false) {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 9.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 20.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              FFAppState().updateProductStruct(
                                                (e) => e..careInst = true,
                                              );
                                              safeSetState(() {});
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '188kiosl' /* CARE INSTRUCTIONS */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .n900,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                FaIcon(
                                                  FontAwesomeIcons.angleDown,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  size: 15.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                } else {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 9.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              FFAppState().updateProductStruct(
                                                (e) => e..careInst = false,
                                              );
                                              safeSetState(() {});
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'y0h4xlic' /* CARE INSTRUCTIONS */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .n900,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                FaIcon(
                                                  FontAwesomeIcons.angleUp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  size: 15.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                StorefrontAPIGroup
                                                    .getItemShopifyCall
                                                    .careInstruction(
                                                  exploreProductGetItemShopifyResponse
                                                      .jsonBody,
                                                ),
                                                '- - ',
                                              ),
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: const Color(0xFF5D5D5D),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.1,
                                                    lineHeight: 1.4,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            Builder(
                              builder: (context) {
                                if (FFAppState().Product.returnprd == false) {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 9.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 20.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              FFAppState().updateProductStruct(
                                                (e) => e..returnprd = true,
                                              );
                                              safeSetState(() {});
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'm7fs1urv' /* DELIVERY & REPAIR INSTRUCTIONS */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .n900,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                FaIcon(
                                                  FontAwesomeIcons.angleDown,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  size: 15.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                } else {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 9.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              FFAppState().updateProductStruct(
                                                (e) => e..returnprd = false,
                                              );
                                              safeSetState(() {});
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '66bftxxk' /* DELIVERY & REPAIR INSTRUCTIONS */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .n900,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                FaIcon(
                                                  FontAwesomeIcons.angleUp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  size: 15.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                StorefrontAPIGroup
                                                    .getItemShopifyCall
                                                    .careInstruction(
                                                  exploreProductGetItemShopifyResponse
                                                      .jsonBody,
                                                ),
                                                '- - ',
                                              ),
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: const Color(0xFF5D5D5D),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.1,
                                                    lineHeight: 1.4,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
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
                                                    context.pushNamed('FAQs');
                                                  },
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o0qi9xqw' /* FIND OUT MORE */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .n600,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                                Transform.rotate(
                                                  angle:
                                                      180.0 * (math.pi / 180),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed('FAQs');
                                                    },
                                                    child: Icon(
                                                      FFIcons.kvectorConverted,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .n600,
                                                      size: 10.0,
                                                    ),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(width: 4.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 9.0, 16.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 18.0,
                                decoration: const BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'hk4nr93i' /* ENVIRONMENTAL IMPACT */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .n900,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Transform.rotate(
                                      angle: 90.0 * (math.pi / 180),
                                      child: FaIcon(
                                        FontAwesomeIcons.angleUp,
                                        color:
                                            FlutterFlowTheme.of(context).n800,
                                        size: 15.0,
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
                            if (_model.checkReviews!.isNotEmpty)
                              Container(
                                width: double.infinity,
                                height: 254.55,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 1.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'je44k3qb' /* PRODUCT IN ACTION */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'PP Hatton',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n950,
                                                  fontSize: 20.0,
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
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 182.55,
                                        decoration: const BoxDecoration(),
                                        child:
                                            FutureBuilder<List<ReviewMediaRow>>(
                                          future: ReviewMediaTable().queryRows(
                                            queryFn: (q) => q,
                                            limit: 3,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return const Center(
                                                child: SizedBox(
                                                  width: 24.0,
                                                  height: 24.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      Color(0xFFA20A05),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<ReviewMediaRow>
                                                listViewReviewMediaRowList =
                                                snapshot.data!;

                                            return ListView.separated(
                                              padding: const EdgeInsets.fromLTRB(
                                                8.0,
                                                0,
                                                0,
                                                0,
                                              ),
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.horizontal,
                                              itemCount:
                                                  listViewReviewMediaRowList
                                                      .length,
                                              separatorBuilder: (_, __) =>
                                                  const SizedBox(width: 10.0),
                                              itemBuilder:
                                                  (context, listViewIndex) {
                                                final listViewReviewMediaRow =
                                                    listViewReviewMediaRowList[
                                                        listViewIndex];
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 108.0,
                                                      height: 164.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: Image.network(
                                                          listViewReviewMediaRow
                                                              .mediaUrl!,
                                                          width: 108.0,
                                                          height: 164.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'v4h5yh89' /* @username */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontSize: 10.0,
                                                            letterSpacing: 0.0,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 3.0)),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 1.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
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
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'xm5yb04z' /* WHAT MODIERS SAID */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'PP Hatton',
                                          color:
                                              FlutterFlowTheme.of(context).m500,
                                          fontSize: 20.0,
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
                              height: 5.0,
                              decoration: const BoxDecoration(),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController ??=
                                            FormFieldController<String>(
                                      _model.dropDownValue ??=
                                          FFLocalizations.of(context).getText(
                                        'qx26s81r' /* Newest */,
                                      ),
                                    ),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'e3ijj8hf' /* Newest */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'bux4s56a' /* Oldest */,
                                      )
                                    ],
                                    onChanged: (val) async {
                                      safeSetState(
                                          () => _model.dropDownValue = val);
                                      _model.dropdownval =
                                          _model.dropDownValue!;
                                      safeSetState(() {});
                                    },
                                    width: 75.0,
                                    height: 24.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color:
                                              FlutterFlowTheme.of(context).n950,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                        ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context).n950,
                                      size: 12.0,
                                    ),
                                    fillColor:
                                        FlutterFlowTheme.of(context).m200,
                                    elevation: 0.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).n950,
                                    borderWidth: 1.0,
                                    borderRadius: 40.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.filtereview == 1) {
                                        _model.filtereview = null;
                                        safeSetState(() {});
                                      } else {
                                        _model.filtereview = 1;
                                        safeSetState(() {});
                                      }
                                    },
                                    child: Container(
                                      width: 32.0,
                                      height: 24.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                        border: Border.all(
                                          color: _model.filtereview == 1
                                              ? FlutterFlowTheme.of(context)
                                                  .m500
                                              : FlutterFlowTheme.of(context)
                                                  .n950,
                                          width: 0.5,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'nrp8ytmy' /* 1 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: _model.filtereview ==
                                                            1
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
                                          ),
                                          Opacity(
                                            opacity: 0.2,
                                            child: Icon(
                                              FFIcons.kcircConverted,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .m500,
                                              size: 12.0,
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 3.0)),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.filtereview == 2) {
                                        _model.filtereview = null;
                                        safeSetState(() {});
                                      } else {
                                        _model.filtereview = 2;
                                        safeSetState(() {});
                                      }
                                    },
                                    child: Container(
                                      width: 32.0,
                                      height: 24.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                        border: Border.all(
                                          color: _model.filtereview == 2
                                              ? FlutterFlowTheme.of(context)
                                                  .m500
                                              : FlutterFlowTheme.of(context)
                                                  .n950,
                                          width: 0.5,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'n54nid96' /* 2 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: _model.filtereview ==
                                                            2
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
                                          ),
                                          Opacity(
                                            opacity: 0.4,
                                            child: Icon(
                                              FFIcons.kcircConverted,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .m500,
                                              size: 12.0,
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 3.0)),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.filtereview == 3) {
                                        _model.filtereview = null;
                                        safeSetState(() {});
                                      } else {
                                        _model.filtereview = 3;
                                        safeSetState(() {});
                                      }
                                    },
                                    child: Container(
                                      width: 32.0,
                                      height: 24.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                        border: Border.all(
                                          color: _model.filtereview == 3
                                              ? FlutterFlowTheme.of(context)
                                                  .m500
                                              : FlutterFlowTheme.of(context)
                                                  .n950,
                                          width: 0.5,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'pphv4odk' /* 3 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: _model.filtereview ==
                                                            3
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
                                          ),
                                          Opacity(
                                            opacity: 0.6,
                                            child: Icon(
                                              FFIcons.kcircConverted,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .m500,
                                              size: 12.0,
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 3.0)),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.filtereview == 4) {
                                        _model.filtereview = null;
                                        safeSetState(() {});
                                      } else {
                                        _model.filtereview = 4;
                                        safeSetState(() {});
                                      }
                                    },
                                    child: Container(
                                      width: 32.0,
                                      height: 24.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                        border: Border.all(
                                          color: _model.filtereview == 4
                                              ? FlutterFlowTheme.of(context)
                                                  .m500
                                              : FlutterFlowTheme.of(context)
                                                  .n950,
                                          width: 0.5,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'voqgotfe' /* 4 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: _model.filtereview ==
                                                            4
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
                                          ),
                                          Opacity(
                                            opacity: 0.8,
                                            child: Icon(
                                              FFIcons.kcircConverted,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .m500,
                                              size: 12.0,
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 3.0)),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.filtereview == 5) {
                                        _model.filtereview = null;
                                        safeSetState(() {});
                                      } else {
                                        _model.filtereview = 5;
                                        safeSetState(() {});
                                      }
                                    },
                                    child: Container(
                                      width: 32.0,
                                      height: 24.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                        border: Border.all(
                                          color: _model.filtereview == 5
                                              ? FlutterFlowTheme.of(context)
                                                  .m500
                                              : FlutterFlowTheme.of(context)
                                                  .n950,
                                          width: 0.5,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'k2jgkz0i' /* 5 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: _model.filtereview ==
                                                            5
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
                                          ),
                                          Icon(
                                            FFIcons.kcircConverted,
                                            color: FlutterFlowTheme.of(context)
                                                .m500,
                                            size: 12.0,
                                          ),
                                        ].divide(const SizedBox(width: 3.0)),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 6.0)),
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                if ((_model.filtereview == null) &&
                                    (_model.dropdownval == 'Newest')) {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 9.0, 0.0, 0.0),
                                    child: FutureBuilder<List<ReviewRow>>(
                                      future: ReviewTable().queryRows(
                                        queryFn: (q) => q.eqOrNull(
                                          'product_id',
                                          columnProductRow.produtoId,
                                        ),
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
                                        List<ReviewRow> listViewReviewRowList =
                                            snapshot.data!;

                                        if (listViewReviewRowList.isEmpty) {
                                          return const EmptyReviewsWidget();
                                        }

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewReviewRowList.length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewReviewRow =
                                                listViewReviewRowList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model.reviewModels1
                                                    .getModel(
                                                  listViewReviewRow.id
                                                      .toString(),
                                                  listViewIndex,
                                                ),
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: ReviewWidget(
                                                  key: Key(
                                                    'Keyysw_${listViewReviewRow.id.toString()}',
                                                  ),
                                                  userid: listViewReviewRow
                                                      .profileId!,
                                                  reviewid:
                                                      listViewReviewRow.id,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  );
                                } else if ((_model.filtereview == null) &&
                                    (_model.dropdownval == 'Oldest')) {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 9.0, 0.0, 0.0),
                                    child: FutureBuilder<List<ReviewRow>>(
                                      future: ReviewTable().queryRows(
                                        queryFn: (q) => q
                                            .eqOrNull(
                                              'product_id',
                                              columnProductRow.produtoId,
                                            )
                                            .order('created_at',
                                                ascending: true),
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
                                        List<ReviewRow> listViewReviewRowList =
                                            snapshot.data!;

                                        if (listViewReviewRowList.isEmpty) {
                                          return const EmptyReviewsWidget();
                                        }

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewReviewRowList.length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewReviewRow =
                                                listViewReviewRowList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model.reviewModels2
                                                    .getModel(
                                                  listViewReviewRow.id
                                                      .toString(),
                                                  listViewIndex,
                                                ),
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: ReviewWidget(
                                                  key: Key(
                                                    'Keyvi7_${listViewReviewRow.id.toString()}',
                                                  ),
                                                  userid: listViewReviewRow
                                                      .profileId!,
                                                  reviewid:
                                                      listViewReviewRow.id,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  );
                                } else if ((_model.dropdownval == 'Oldest') &&
                                    (_model.filtereview != null)) {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 9.0, 0.0, 0.0),
                                    child: FutureBuilder<List<ReviewRow>>(
                                      future: ReviewTable().queryRows(
                                        queryFn: (q) => q
                                            .eqOrNull(
                                              'product_id',
                                              columnProductRow.produtoId,
                                            )
                                            .eqOrNull(
                                              'overall_score',
                                              _model.filtereview,
                                            )
                                            .order('created_at'),
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
                                        List<ReviewRow> listViewReviewRowList =
                                            snapshot.data!;

                                        if (listViewReviewRowList.isEmpty) {
                                          return const EmptyReviewsWidget();
                                        }

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewReviewRowList.length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewReviewRow =
                                                listViewReviewRowList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model.reviewModels3
                                                    .getModel(
                                                  listViewReviewRow.id
                                                      .toString(),
                                                  listViewIndex,
                                                ),
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: ReviewWidget(
                                                  key: Key(
                                                    'Keyvj8_${listViewReviewRow.id.toString()}',
                                                  ),
                                                  userid: listViewReviewRow
                                                      .profileId!,
                                                  reviewid:
                                                      listViewReviewRow.id,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  );
                                } else {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 9.0, 0.0, 0.0),
                                    child: FutureBuilder<List<ReviewRow>>(
                                      future: ReviewTable().queryRows(
                                        queryFn: (q) => q
                                            .eqOrNull(
                                              'product_id',
                                              columnProductRow.produtoId,
                                            )
                                            .eqOrNull(
                                              'overall_score',
                                              _model.filtereview,
                                            ),
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
                                        List<ReviewRow> listViewReviewRowList =
                                            snapshot.data!;

                                        if (listViewReviewRowList.isEmpty) {
                                          return const EmptyReviewsWidget();
                                        }

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewReviewRowList.length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewReviewRow =
                                                listViewReviewRowList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model.reviewModels4
                                                    .getModel(
                                                  listViewReviewRow.id
                                                      .toString(),
                                                  listViewIndex,
                                                ),
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: ReviewWidget(
                                                  key: Key(
                                                    'Keys20_${listViewReviewRow.id.toString()}',
                                                  ),
                                                  userid: listViewReviewRow
                                                      .profileId!,
                                                  reviewid:
                                                      listViewReviewRow.id,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    FutureBuilder<List<FavouritesRow>>(
                      future: FavouritesTable().querySingleRow(
                        queryFn: (q) => q
                            .eqOrNull(
                              'user_id',
                              currentUserUid,
                            )
                            .eqOrNull(
                              'product_id',
                              columnProductRow.idShopify,
                            ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return const Center(
                            child: SizedBox(
                              width: 24.0,
                              height: 24.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFFA20A05),
                                ),
                              ),
                            ),
                          );
                        }
                        List<FavouritesRow> containerFavouritesRowList =
                            snapshot.data!;

                        final containerFavouritesRow =
                            containerFavouritesRowList.isNotEmpty
                                ? containerFavouritesRowList.first
                                : null;

                        return Container(
                          width: double.infinity,
                          height: 108.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).n950,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Builder(
                                          builder: (context) {
                                            if (containerFavouritesRow?.id ==
                                                null) {
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
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
                                                      await FavouritesTable()
                                                          .insert({
                                                        'user_id':
                                                            currentUserUid,
                                                        'product_id':
                                                            columnProductRow
                                                                .idShopify,
                                                        'type': 'Fashion',
                                                      });

                                                      safeSetState(() {});
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: Image.asset(
                                                        'assets/images/archive-minus-2.png',
                                                        width: 24.0,
                                                        height: 24.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            } else {
                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await FavouritesTable()
                                                      .delete(
                                                    matchingRows: (rows) => rows
                                                        .eqOrNull(
                                                          'user_id',
                                                          currentUserUid,
                                                        )
                                                        .eqOrNull(
                                                          'product_id',
                                                          columnProductRow
                                                              .idShopify,
                                                        ),
                                                  );

                                                  safeSetState(() {});
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/archive-minus.png',
                                                    width: 24.0,
                                                    height: 24.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (_model.choiceChipsValue ==
                                                    null ||
                                                _model.choiceChipsValue == '') {
                                              if (animationsMap[
                                                      'choiceChipsOnActionTriggerAnimation'] !=
                                                  null) {
                                                await animationsMap[
                                                        'choiceChipsOnActionTriggerAnimation']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                            } else {
                                              _model.checkprod =
                                                  await CartTable().queryRows(
                                                queryFn: (q) => q
                                                    .eqOrNull(
                                                      'profile_id',
                                                      currentUserUid,
                                                    )
                                                    .eqOrNull(
                                                      'product_id',
                                                      columnProductRow
                                                          .idShopify,
                                                    )
                                                    .eqOrNull(
                                                      'size',
                                                      _model.choiceChipsValue,
                                                    )
                                                    .eqOrNull(
                                                      'color',
                                                      'Blue',
                                                    ),
                                              );
                                              if (_model.checkprod!.isNotEmpty) {
                                                await CartTable().update(
                                                  data: {
                                                    'quantity': (_model
                                                            .checkprod!
                                                            .firstOrNull!
                                                            .quantity!) +
                                                        1,
                                                  },
                                                  matchingRows: (rows) => rows
                                                      .eqOrNull(
                                                        'profile_id',
                                                        currentUserUid,
                                                      )
                                                      .eqOrNull(
                                                        'product_id',
                                                        columnProductRow
                                                            .idShopify,
                                                      )
                                                      .eqOrNull(
                                                        'color',
                                                        'Blue',
                                                      )
                                                      .eqOrNull(
                                                        'size',
                                                        _model.choiceChipsValue,
                                                      ),
                                                );
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child: AddToCartWidget(
                                                          idpord:
                                                              columnProductRow
                                                                  .idShopify!,
                                                          size: _model
                                                              .choiceChipsValue!,
                                                          color: FFAppState()
                                                              .color,
                                                          quant: (_model
                                                                  .checkprod!
                                                                  .firstOrNull!
                                                                  .quantity!) +
                                                              1,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              } else {
                                                await CartTable().insert({
                                                  'profile_id': currentUserUid,
                                                  'product_id': columnProductRow
                                                      .idShopify,
                                                  'quantity': 1,
                                                  'color': 'Blue',
                                                  'size':
                                                      _model.choiceChipsValue,
                                                });
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child: AddToCartWidget(
                                                          idpord:
                                                              columnProductRow
                                                                  .idShopify!,
                                                          size: _model
                                                              .choiceChipsValue!,
                                                          color: FFAppState()
                                                              .color,
                                                          quant: 1,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              }
                                            }

                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            width: 302.0,
                                            height: 52.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '0ypw57mp' /* ADD TO THE CART */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'PP Hatton',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .n50,
                                                        fontSize: 15.0,
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
