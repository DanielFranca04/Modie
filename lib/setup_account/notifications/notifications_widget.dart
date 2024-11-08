import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'notifications_model.dart';
export 'notifications_model.dart';

class NotificationsWidget extends StatefulWidget {
  const NotificationsWidget({super.key});

  @override
  State<NotificationsWidget> createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  late NotificationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsModel());

    _model.switchValue1 = true;
    _model.switchValue2 = true;
    _model.switchValue3 = true;
    _model.switchValue4 = true;
    _model.switchValue5 = true;
    _model.switchValue6 = true;
    _model.switchValue7 = true;
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 100.0,
              height: 40.0,
              decoration: const BoxDecoration(),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: const Color(0x00A20A05),
                    icon: Icon(
                      Icons.chevron_left,
                      color: FlutterFlowTheme.of(context).n950,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      context.safePop();
                    },
                  ),
                  Container(
                    width: 100.0,
                    height: 40.0,
                    decoration: const BoxDecoration(),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'xuv7dgfq' /* NOTIFICATIONS */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
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
              height: 15.0,
              decoration: const BoxDecoration(),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'ogkrlhx0' /* Manage your alerts */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: FlutterFlowTheme.of(context).n950,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
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
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 36.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).n950,
                    width: 0.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'tt922l5f' /* Order updates */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).n800,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Switch(
                        value: _model.switchValue1!,
                        onChanged: (newValue) async {
                          safeSetState(() => _model.switchValue1 = newValue);
                        },
                        activeColor: FlutterFlowTheme.of(context).m500,
                        activeTrackColor: const Color(0x7FA20A05),
                        inactiveTrackColor: FlutterFlowTheme.of(context).n300,
                        inactiveThumbColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 100.0,
              height: 15.0,
              decoration: const BoxDecoration(),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 36.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).n950,
                    width: 0.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '9r2j74tb' /* Promotions & sales */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).n800,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Switch(
                        value: _model.switchValue2!,
                        onChanged: (newValue) async {
                          safeSetState(() => _model.switchValue2 = newValue);
                        },
                        activeColor: FlutterFlowTheme.of(context).m500,
                        activeTrackColor: const Color(0x7FA20A05),
                        inactiveTrackColor: FlutterFlowTheme.of(context).n300,
                        inactiveThumbColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 100.0,
              height: 15.0,
              decoration: const BoxDecoration(),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 36.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).n950,
                    width: 0.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          's4eh38yd' /* New brands */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).n800,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Switch(
                        value: _model.switchValue3!,
                        onChanged: (newValue) async {
                          safeSetState(() => _model.switchValue3 = newValue);
                        },
                        activeColor: FlutterFlowTheme.of(context).m500,
                        activeTrackColor: const Color(0x7FA20A05),
                        inactiveTrackColor: FlutterFlowTheme.of(context).n300,
                        inactiveThumbColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 100.0,
              height: 15.0,
              decoration: const BoxDecoration(),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 36.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).n950,
                    width: 0.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '0q4q1ikv' /* New product guides */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).n800,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Switch(
                        value: _model.switchValue4!,
                        onChanged: (newValue) async {
                          safeSetState(() => _model.switchValue4 = newValue);
                        },
                        activeColor: FlutterFlowTheme.of(context).m500,
                        activeTrackColor: const Color(0x7FA20A05),
                        inactiveTrackColor: FlutterFlowTheme.of(context).n300,
                        inactiveThumbColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 100.0,
              height: 15.0,
              decoration: const BoxDecoration(),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 36.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).n950,
                    width: 0.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'iij8fr4m' /* Approval of your review */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).n800,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Switch(
                        value: _model.switchValue5!,
                        onChanged: (newValue) async {
                          safeSetState(() => _model.switchValue5 = newValue);
                        },
                        activeColor: FlutterFlowTheme.of(context).m500,
                        activeTrackColor: const Color(0x7FA20A05),
                        inactiveTrackColor: FlutterFlowTheme.of(context).n300,
                        inactiveThumbColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 100.0,
              height: 15.0,
              decoration: const BoxDecoration(),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 36.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).n950,
                    width: 0.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'xryd7aau' /* Content download */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).n800,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Switch(
                        value: _model.switchValue6!,
                        onChanged: (newValue) async {
                          safeSetState(() => _model.switchValue6 = newValue);
                        },
                        activeColor: FlutterFlowTheme.of(context).m500,
                        activeTrackColor: const Color(0x7FA20A05),
                        inactiveTrackColor: FlutterFlowTheme.of(context).n300,
                        inactiveThumbColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 100.0,
              height: 15.0,
              decoration: const BoxDecoration(),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 36.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).n950,
                    width: 0.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '3kp8um8z' /* Pre-order alert */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).n800,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Switch(
                        value: _model.switchValue7!,
                        onChanged: (newValue) async {
                          safeSetState(() => _model.switchValue7 = newValue);
                        },
                        activeColor: FlutterFlowTheme.of(context).m500,
                        activeTrackColor: const Color(0x7FA20A05),
                        inactiveTrackColor: FlutterFlowTheme.of(context).n300,
                        inactiveThumbColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
