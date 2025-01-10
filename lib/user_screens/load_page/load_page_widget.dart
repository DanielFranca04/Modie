import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'load_page_model.dart';
export 'load_page_model.dart';

class LoadPageWidget extends StatefulWidget {
  const LoadPageWidget({super.key});

  @override
  State<LoadPageWidget> createState() => _LoadPageWidgetState();
}

class _LoadPageWidgetState extends State<LoadPageWidget>
    with TickerProviderStateMixin {
  late LoadPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.outputEmail = await ProfileTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'email',
          currentUserEmail,
        ),
      );
      if (_model.outputEmail?.firstOrNull?.username == null ||
          _model.outputEmail?.firstOrNull?.username == '') {
        context.goNamed('BirthDateScreen');
      } else {
        _model.outputquiz = await QuizResultsTable().queryRows(
          queryFn: (q) => q.eqOrNull(
            'user_id',
            currentUserUid,
          ),
        );
        await Future.delayed(const Duration(milliseconds: 1000));
        if (_model.outputquiz?.length == 0) {
          context.pushNamed(
            'StartQuiz',
            queryParameters: {
              'navback': serializeParam(
                true,
                ParamType.bool,
              ),
            }.withoutNulls,
          );
        } else {
          context.goNamed('HomePage');
        }
      }
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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
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
