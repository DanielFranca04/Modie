import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'f_a_qs_comp_model.dart';
export 'f_a_qs_comp_model.dart';

class FAQsCompWidget extends StatefulWidget {
  const FAQsCompWidget({
    super.key,
    required this.id,
  });

  final int? id;

  @override
  State<FAQsCompWidget> createState() => _FAQsCompWidgetState();
}

class _FAQsCompWidgetState extends State<FAQsCompWidget>
    with TickerProviderStateMixin {
  late FAQsCompModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FAQsCompModel());

    animationsMap.addAll({
      'iconButtonOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 4.75,
            end: 5.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
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
    context.watch<FFAppState>();

    return Builder(
      builder: (context) {
        if (!FFAppState().faqs[widget.id!]) {
          return Container(
            width: double.infinity,
            height: 50.0,
            constraints: const BoxConstraints(
              minHeight: 34.0,
              maxHeight: 160.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).n950,
                width: 0.5,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'r509y5u1' /* How can I purchase  a product ... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n800,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 8.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.add,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 22.0,
                        ),
                        onPressed: () async {
                          if (animationsMap[
                                  'iconButtonOnActionTriggerAnimation'] !=
                              null) {
                            animationsMap['iconButtonOnActionTriggerAnimation']!
                                .controller
                                .forward(from: 0.0);
                          }
                          await Future.delayed(
                              const Duration(milliseconds: 100));
                          FFAppState().updateFaqsAtIndex(
                            widget.id!,
                            (_) => true,
                          );
                          safeSetState(() {});
                        },
                      ).animateOnActionTrigger(
                        animationsMap['iconButtonOnActionTriggerAnimation']!,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else {
          return Container(
            width: double.infinity,
            constraints: const BoxConstraints(
              minHeight: 34.0,
              maxHeight: 160.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).n950,
                width: 0.5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'i1j4ogbk' /* How can I purchase  a product ... */,
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context).n800,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 22.0,
                          ),
                          onPressed: () async {
                            FFAppState().updateFaqsAtIndex(
                              widget.id!,
                              (_) => false,
                            );
                            safeSetState(() {});
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(9.0, 5.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'zuqtota1' /* Lorem ipsum dolor sit amet con... */,
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).n800,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
        }
      },
    );
  }
}
