import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'how_to_guide_model.dart';
export 'how_to_guide_model.dart';

class HowToGuideWidget extends StatefulWidget {
  const HowToGuideWidget({super.key});

  @override
  State<HowToGuideWidget> createState() => _HowToGuideWidgetState();
}

class _HowToGuideWidgetState extends State<HowToGuideWidget> {
  late HowToGuideModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HowToGuideModel());
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
        if (FFAppState().guide == 1) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xBE000000),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 12.0,
                  height: 36.0,
                  decoration: const BoxDecoration(),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
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
                      Container(
                        height: 50.0,
                        decoration: const BoxDecoration(),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().guide = 7;
                          FFAppState().navbarguide = false;
                          FFAppState().navbarstate = 1;
                          _model.updatePage(() {});
                        },
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'nii6o3ow' /* SKIP ALL */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).m200,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.2,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Transform.rotate(
                      angle: 269.0 * (math.pi / 180),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Backward.png',
                          width: 60.0,
                          height: 60.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'opx2bruq' /* By clicking here you'll have a... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: const BoxDecoration(),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 70.0,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 1;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 2;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 3;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 4;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 5;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 6;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: const BoxDecoration(),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = FFAppState().guide + 1;
                            safeSetState(() {});
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/Backward.png',
                              width: 46.0,
                              height: 25.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 24.0,
                  decoration: const BoxDecoration(),
                ),
              ],
            ),
          );
        } else if (FFAppState().guide == 2) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xBE000000),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 12.0,
                  height: 36.0,
                  decoration: const BoxDecoration(),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50.0,
                        decoration: const BoxDecoration(),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().guide = 7;
                          FFAppState().navbarguide = false;
                          FFAppState().navbarstate = 1;
                          _model.updatePage(() {});
                        },
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'oiyke1kl' /* SKIP ALL */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).m200,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.2,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'guyuq145' /* Here at Home you can access th... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Transform.rotate(
                              angle: 89.0 * (math.pi / 180),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Backward.png',
                                  width: 40.0,
                                  height: 40.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Container(
                              width: 20.0,
                              height: 30.0,
                              decoration: const BoxDecoration(),
                            ),
                            Container(
                              width: 20.0,
                              height: 30.0,
                              decoration: const BoxDecoration(),
                            ),
                            Container(
                              width: 20.0,
                              height: 30.0,
                              decoration: const BoxDecoration(),
                            ),
                            Container(
                              width: 20.0,
                              height: 30.0,
                              decoration: const BoxDecoration(),
                            ),
                            Container(
                              width: 20.0,
                              height: 30.0,
                              decoration: const BoxDecoration(),
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: 40.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kmodieLogoNoBackground1,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '5dp5krlx' /* HOME */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kgroup1914,
                                            color: FFAppState().navbarstate == 2
                                                ? FlutterFlowTheme.of(context)
                                                    .m500
                                                : FlutterFlowTheme.of(context)
                                                    .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '8red3mjm' /*  */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00A20A05),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kbag2,
                                            color: FFAppState().navbarstate == 3
                                                ? FlutterFlowTheme.of(context)
                                                    .m500
                                                : FlutterFlowTheme.of(context)
                                                    .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'u178yu4g' /* SHOP */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00A20A05),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kplusCircle,
                                            color: FFAppState().navbarstate == 4
                                                ? FlutterFlowTheme.of(context)
                                                    .m500
                                                : FlutterFlowTheme.of(context)
                                                    .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '9d85km0r' /* CREATE */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00A20A05),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kgroup1939,
                                            color: FFAppState().navbarstate == 5
                                                ? FlutterFlowTheme.of(context)
                                                    .m500
                                                : FlutterFlowTheme.of(context)
                                                    .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '5r4f42og' /* REWARDS */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00A20A05),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 70.0,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 1;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 2;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 3;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 4;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 5;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 6;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: const BoxDecoration(),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = FFAppState().guide + 1;
                            safeSetState(() {});
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/Backward.png',
                              width: 46.0,
                              height: 25.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 24.0,
                  decoration: const BoxDecoration(),
                ),
              ],
            ),
          );
        } else if (FFAppState().guide == 3) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xBE000000),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 12.0,
                  height: 36.0,
                  decoration: const BoxDecoration(),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50.0,
                        decoration: const BoxDecoration(),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().guide = 7;
                          FFAppState().navbarguide = false;
                          FFAppState().navbarstate = 1;
                          _model.updatePage(() {});
                        },
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'hgvjwxfa' /* SKIP ALL */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).m200,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.2,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'c0rl2skk' /* At Explore section you will ha... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Transform.rotate(
                              angle: 89.0 * (math.pi / 180),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Backward.png',
                                  width: 40.0,
                                  height: 40.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: 40.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Opacity(
                                            opacity: 0.0,
                                            child: Icon(
                                              FFIcons.kmodieLogoNoBackground1,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                              size: 24.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '7omg257p' /* HOME */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00FFFFFF),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kgroup1914,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '7yul5chy' /* EXPLORE */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kbag2,
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'b4iyu3tu' /* SHOP */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00A20A05),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kplusCircle,
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '6fum1x44' /* CREATE */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00A20A05),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kgroup1939,
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'tpkcasr4' /* REWARDS */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00A20A05),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 70.0,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 1;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 2;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 3;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 4;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 5;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 6;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: const BoxDecoration(),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = FFAppState().guide + 1;
                            safeSetState(() {});
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/Backward.png',
                              width: 46.0,
                              height: 25.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 24.0,
                  decoration: const BoxDecoration(),
                ),
              ],
            ),
          );
        } else if (FFAppState().guide == 4) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xBE000000),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 12.0,
                  height: 36.0,
                  decoration: const BoxDecoration(),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50.0,
                        decoration: const BoxDecoration(),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().guide = 7;
                          FFAppState().navbarguide = false;
                          FFAppState().navbarstate = 1;
                          _model.updatePage(() {});
                        },
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ucvnsnn2' /* SKIP ALL */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).m200,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.2,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '1kw2y1ep' /* At Shop section you  can explo... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Transform.rotate(
                              angle: 89.0 * (math.pi / 180),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Backward.png',
                                  width: 40.0,
                                  height: 40.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: 40.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Opacity(
                                            opacity: 0.0,
                                            child: Icon(
                                              FFIcons.kmodieLogoNoBackground1,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                              size: 24.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1owkf44z' /* HOME */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00FFFFFF),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kgroup1914,
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'iqzwqcdu' /*  */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00FFFFFF),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kbag2,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '5no5z7e1' /* SHOP */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kplusCircle,
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '0m8r6axf' /* CREATE */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00A20A05),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kgroup1939,
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'y6zclf93' /* REWARDS */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00A20A05),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 70.0,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 1;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 2;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 3;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 4;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 5;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 6;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: const BoxDecoration(),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = FFAppState().guide + 1;
                            safeSetState(() {});
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/Backward.png',
                              width: 46.0,
                              height: 25.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 24.0,
                  decoration: const BoxDecoration(),
                ),
              ],
            ),
          );
        } else if (FFAppState().guide == 5) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xBE000000),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 12.0,
                  height: 36.0,
                  decoration: const BoxDecoration(),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50.0,
                        decoration: const BoxDecoration(),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().guide = 7;
                          FFAppState().navbarguide = false;
                          FFAppState().navbarstate = 1;
                          _model.updatePage(() {});
                        },
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ijgxlw94' /* SKIP ALL */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).m200,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.2,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'rl4bxgpk' /* In the Create menu you can cre... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Transform.rotate(
                              angle: 89.0 * (math.pi / 180),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Backward.png',
                                  width: 40.0,
                                  height: 40.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: 40.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Opacity(
                                            opacity: 0.0,
                                            child: Icon(
                                              FFIcons.kmodieLogoNoBackground1,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                              size: 24.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'dh6zvlto' /* HOME */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00FFFFFF),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kgroup1914,
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1fquvt2c' /*  */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00FFFFFF),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kbag2,
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'iy6p7igo' /* SHOP */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00FFFFFF),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kplusCircle,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'n6wqvt3m' /* CREATE */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kgroup1939,
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'm2nl2bei' /* REWARDS */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00A20A05),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 70.0,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 1;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 2;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 3;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 4;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 5;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 6;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: const BoxDecoration(),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = FFAppState().guide + 1;
                            safeSetState(() {});
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/Backward.png',
                              width: 46.0,
                              height: 25.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 24.0,
                  decoration: const BoxDecoration(),
                ),
              ],
            ),
          );
        } else if (FFAppState().guide == 6) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xBE000000),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 12.0,
                  height: 36.0,
                  decoration: const BoxDecoration(),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50.0,
                        decoration: const BoxDecoration(),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().guide = 7;
                          FFAppState().navbarguide = false;
                          FFAppState().navbarstate = 1;
                          _model.updatePage(() {});
                        },
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'hqoksouh' /* SKIP ALL */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).m200,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.2,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '3ggqmg2j' /* In Rewards menu, you'll be abl... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Transform.rotate(
                                angle: 89.0 * (math.pi / 180),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Backward.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Transform.rotate(
                              angle: 89.0 * (math.pi / 180),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Backward.png',
                                  width: 40.0,
                                  height: 40.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: 40.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Opacity(
                                        opacity: 0.0,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              FFIcons.kmodieLogoNoBackground1,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                              size: 24.0,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 6.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ttf881n2' /* HOME */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: const Color(0x00FFFFFF),
                                                      fontSize: 8.0,
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
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kgroup1914,
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'f936muz2' /*  */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00FFFFFF),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kbag2,
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'cvuh2622' /* SHOP */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00FFFFFF),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kplusCircle,
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '09xyw6zc' /* CREATE */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x00FFFFFF),
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            FFIcons.kgroup1939,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 24.0,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'nz6d61l5' /* REWARDS */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 8.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 70.0,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 1;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 2;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 3;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 4;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = 5;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context).n300,
                            size: 8.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = FFAppState().guide + 6;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.circle_sharp,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 8.0,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: const BoxDecoration(),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().guide = FFAppState().guide + 1;
                            FFAppState().navbarguide = false;
                            FFAppState().navbarstate = 1;
                            _model.updatePage(() {});
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/Group_1903.png',
                              width: 79.0,
                              height: 34.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 24.0,
                  decoration: const BoxDecoration(),
                ),
              ],
            ),
          );
        } else {
          return const Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          );
        }
      },
    );
  }
}
