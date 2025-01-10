import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'img_comp_model.dart';
export 'img_comp_model.dart';

class ImgCompWidget extends StatefulWidget {
  const ImgCompWidget({
    super.key,
    required this.imgsindex,
  });

  final List<String>? imgsindex;

  @override
  State<ImgCompWidget> createState() => _ImgCompWidgetState();
}

class _ImgCompWidgetState extends State<ImgCompWidget>
    with TickerProviderStateMixin {
  late ImgCompModel _model;

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
    _model = createModel(context, () => ImgCompModel());

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
    return SizedBox(
      width: double.infinity,
      height: 301.0,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: Image.network(
              (widget.imgsindex!.elementAtOrNull(_model.numb!))!,
              width: double.infinity,
              height: 301.0,
              fit: BoxFit.cover,
            ),
          ).animateOnActionTrigger(
              animationsMap['imageOnActionTriggerAnimation']!,
              hasBeenTriggered: hasImageTriggered),
          if (widget.imgsindex!.length > 1)
            Align(
              alignment: const AlignmentDirectional(1.0, 0.03),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (_model.numb == (widget.imgsindex!.length - 1)) {
                    _model.numb = 0;
                    safeSetState(() {});
                  } else {
                    _model.numb = _model.numb! + 1;
                    safeSetState(() {});
                  }

                  if (animationsMap['imageOnActionTriggerAnimation'] != null) {
                    safeSetState(() => hasImageTriggered = true);
                    SchedulerBinding.instance.addPostFrameCallback((_) async =>
                        await animationsMap['imageOnActionTriggerAnimation']!
                            .controller
                            .forward(from: 0.0));
                  }
                },
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: const BoxDecoration(),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Transform.rotate(
                      angle: 180.0 * (math.pi / 180),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          FFIcons.kvectorConverted,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          if (widget.imgsindex!.length > 1)
            Align(
              alignment: const AlignmentDirectional(-0.98, 0.03),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (_model.numb == 0) {
                    _model.numb = widget.imgsindex!.length - 1;
                    safeSetState(() {});
                  } else {
                    _model.numb = _model.numb! + -1;
                    safeSetState(() {});
                  }

                  if (animationsMap['imageOnActionTriggerAnimation'] != null) {
                    safeSetState(() => hasImageTriggered = true);
                    SchedulerBinding.instance.addPostFrameCallback((_) async =>
                        await animationsMap['imageOnActionTriggerAnimation']!
                            .controller
                            .forward(from: 0.0));
                  }
                },
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: const BoxDecoration(),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      FFIcons.kvectorConverted,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 14.0,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
