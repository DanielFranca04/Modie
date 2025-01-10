import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'prod_reviews_comp_model.dart';
export 'prod_reviews_comp_model.dart';

class ProdReviewsCompWidget extends StatefulWidget {
  const ProdReviewsCompWidget({
    super.key,
    required this.listimgs,
    required this.productid,
    required this.price,
    required this.title,
    required this.brand,
  });

  final List<String>? listimgs;
  final String? productid;
  final String? price;
  final String? title;
  final String? brand;

  @override
  State<ProdReviewsCompWidget> createState() => _ProdReviewsCompWidgetState();
}

class _ProdReviewsCompWidgetState extends State<ProdReviewsCompWidget>
    with TickerProviderStateMixin {
  late ProdReviewsCompModel _model;

  var hasImageTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProdReviewsCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (animationsMap['imageOnActionTriggerAnimation'] != null) {
        animationsMap['imageOnActionTriggerAnimation']!.controller.reset();
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: FutureBuilder<List<ProductRow>>(
        future: ProductTable().querySingleRow(
          queryFn: (q) => q.eqOrNull(
            'id_shopify',
            widget.productid,
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
          List<ProductRow> containerProductRowList = snapshot.data!;

          final containerProductRow = containerProductRowList.isNotEmpty
              ? containerProductRowList.first
              : null;

          return Container(
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
                                  color: FlutterFlowTheme.of(context).n950,
                                  width: 1.0,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  (widget.listimgs!
                                      .elementAtOrNull(_model.numb))!,
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ).animateOnActionTrigger(
                                  animationsMap[
                                      'imageOnActionTriggerAnimation']!,
                                  hasBeenTriggered: hasImageTriggered),
                            ),
                            if (widget.listimgs?.length != 1)
                              Align(
                                alignment: const AlignmentDirectional(1.02, -0.05),
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (_model.numb ==
                                              (widget.listimgs!.length - 1)) {
                                            _model.numb = 0;
                                            safeSetState(() {});
                                          } else {
                                            _model.numb = _model.numb + 1;
                                            safeSetState(() {});
                                          }

                                          if (animationsMap[
                                                  'imageOnActionTriggerAnimation'] !=
                                              null) {
                                            safeSetState(
                                                () => hasImageTriggered = true);
                                            SchedulerBinding.instance
                                                .addPostFrameCallback((_) async =>
                                                    await animationsMap[
                                                            'imageOnActionTriggerAnimation']!
                                                        .controller
                                                        .forward(from: 0.0));
                                          }
                                        },
                                        child: Icon(
                                          Icons.chevron_right_rounded,
                                          color:
                                              FlutterFlowTheme.of(context).n950,
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            if (widget.listimgs?.length != 1)
                              Opacity(
                                opacity:
                                    widget.listimgs?.length == 1 ? 0.0 : 1.0,
                                child: Align(
                                  alignment: const AlignmentDirectional(-1.01, -0.05),
                                  child: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (_model.numb == 0) {
                                              _model.numb = _model.numb +
                                                  (widget.listimgs!.length -
                                                      1);
                                              safeSetState(() {});
                                            } else {
                                              _model.numb = _model.numb + -1;
                                              safeSetState(() {});
                                            }

                                            if (animationsMap[
                                                    'imageOnActionTriggerAnimation'] !=
                                                null) {
                                              safeSetState(() =>
                                                  hasImageTriggered = true);
                                              SchedulerBinding.instance
                                                  .addPostFrameCallback((_) async =>
                                                      await animationsMap[
                                                              'imageOnActionTriggerAnimation']!
                                                          .controller
                                                          .forward(from: 0.0));
                                            }
                                          },
                                          child: Icon(
                                            Icons.chevron_left_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            size: 20.0,
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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(13.0, 0.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100.0,
                          height: 12.0,
                          decoration: const BoxDecoration(),
                        ),
                        RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'vyawvw0b' /* OVERALL SCORE */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).m500,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'cpm7k09s' /*   (i) */,
                                ),
                                style: TextStyle(
                                  fontFamily: 'PP Hatton',
                                  color: FlutterFlowTheme.of(context).n500,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                ),
                                mouseCursor: SystemMouseCursors.click,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    context.pushNamed(
                                      'ScoringGuide',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 300),
                                        ),
                                      },
                                    );
                                  },
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'PP Hatton',
                                  color: FlutterFlowTheme.of(context).m500,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 7.0, 0.0, 0.0),
                          child: RatingBarIndicator(
                            itemBuilder: (context, index) => Icon(
                              FFIcons.kcircConverted,
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                            direction: Axis.horizontal,
                            rating: containerProductRow!.overallScore!,
                            unratedColor: FlutterFlowTheme.of(context).n300,
                            itemCount: 5,
                            itemSize: 24.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'fbbid3ig' /* DURABILITY */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 0.0, 0.0),
                                child: RatingBarIndicator(
                                  itemBuilder: (context, index) => Icon(
                                    FFIcons.kcircConverted,
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                  direction: Axis.horizontal,
                                  rating: containerProductRow.durability!,
                                  unratedColor:
                                      FlutterFlowTheme.of(context).n300,
                                  itemCount: 5,
                                  itemSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '5amfndwo' /* SIZE & FIT */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 0.0, 0.0),
                                child: RatingBarIndicator(
                                  itemBuilder: (context, index) => Icon(
                                    FFIcons.kcircConverted,
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                  direction: Axis.horizontal,
                                  rating: containerProductRow.sizeFit!,
                                  unratedColor:
                                      FlutterFlowTheme.of(context).n300,
                                  itemCount: 5,
                                  itemSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '2pym7317' /* VERSATILITY */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 0.0, 0.0),
                                child: RatingBarIndicator(
                                  itemBuilder: (context, index) => Icon(
                                    FFIcons.kcircConverted,
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                  direction: Axis.horizontal,
                                  rating: containerProductRow.versatility!,
                                  unratedColor:
                                      FlutterFlowTheme.of(context).n300,
                                  itemCount: 5,
                                  itemSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'jxz3604j' /* FUNCTIONALITY */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 0.0, 0.0),
                                child: RatingBarIndicator(
                                  itemBuilder: (context, index) => Icon(
                                    FFIcons.kcircConverted,
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                  direction: Axis.horizontal,
                                  rating: containerProductRow.functionality!,
                                  unratedColor:
                                      FlutterFlowTheme.of(context).n300,
                                  itemCount: 5,
                                  itemSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 7.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'v2vum5uk' /* VALUE FOR MONEY */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              RatingBarIndicator(
                                itemBuilder: (context, index) => Icon(
                                  FFIcons.kcircConverted,
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                                direction: Axis.horizontal,
                                rating: containerProductRow.valueForMoney!,
                                unratedColor: FlutterFlowTheme.of(context).n300,
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
                            widget.brand,
                            '- - ',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n900,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.title,
                            '- - ',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n800,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 2.0, 0.0, 0.0),
                          child: Text(
                            '£${widget.price}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context).m500,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
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
    );
  }
}
