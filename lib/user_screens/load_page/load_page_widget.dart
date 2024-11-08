import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'load_page_model.dart';
export 'load_page_model.dart';

class LoadPageWidget extends StatefulWidget {
  const LoadPageWidget({super.key});

  @override
  State<LoadPageWidget> createState() => _LoadPageWidgetState();
}

class _LoadPageWidgetState extends State<LoadPageWidget> {
  late LoadPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.outputEmail = await ProfileTable().queryRows(
        queryFn: (q) => q.eq(
          'email',
          currentUserEmail,
        ),
      );
      if (_model.outputEmail?.first.dateOfBirth == null) {
        context.goNamed('BirthDateScreen');
      } else {
        context.goNamed('HomePage');
      }
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
        backgroundColor: FlutterFlowTheme.of(context).m200,
        body: const SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}
