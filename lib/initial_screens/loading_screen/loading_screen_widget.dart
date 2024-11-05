import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'loading_screen_model.dart';
export 'loading_screen_model.dart';

class LoadingScreenWidget extends StatefulWidget {
  const LoadingScreenWidget({super.key});

  @override
  State<LoadingScreenWidget> createState() => _LoadingScreenWidgetState();
}

class _LoadingScreenWidgetState extends State<LoadingScreenWidget>
    with TickerProviderStateMixin {
  late LoadingScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 2000));

      context.goNamed(
        'GetStartedScreen',
        extra: <String, dynamic>{
          kTransitionInfoKey: const TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 550),
          ),
        },
      );
    });

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1940.0.ms,
            begin: const Offset(-2.0, -2.0),
            end: const Offset(7.0, 7.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF1B1B1B),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Group_54.png',
                        width: 218.02,
                        height: 262.38,
                        fit: BoxFit.cover,
                      ),
                    ).animateOnPageLoad(
                        animationsMap['imageOnPageLoadAnimation']!),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
