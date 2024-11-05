import '/components/how_to_guide/how_to_guide_widget.dart';
import '/components/navbar/navbar_widget.dart';
import '/components/options/options_widget.dart';
import '/components/review_comp_copy2/review_comp_copy2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().menu = false;
      safeSetState(() {});
    });
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
      onTap: () => FocusScope.of(context).unfocus(),
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
                          height: 36.0,
                          decoration: const BoxDecoration(),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 10.0, 16.0, 0.0),
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
                              Container(
                                height: 50.0,
                                decoration: const BoxDecoration(),
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
                              18.0, 0.0, 18.0, 0.0),
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
                              18.0, 12.0, 18.0, 0.0),
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
                              SizedBox(
                                width: double.infinity,
                                height: 536.0,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: Image.asset(
                                        'assets/images/Frame_48096396.png',
                                        width: double.infinity,
                                        height: 536.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-0.03, 0.88),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ytk7cpf4' /* VIEW MORE */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .m500,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-0.91, -0.07),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        icon: FaIcon(
                                          FontAwesomeIcons.angleLeft,
                                          color:
                                              FlutterFlowTheme.of(context).m500,
                                          size: 14.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
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
                                              FlutterFlowTheme.of(context).m500,
                                          size: 14.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'g83z1ngm' /* 5  NEW-SEASON TRENDS WE LOVE */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'PP Hatton',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .m500,
                                                    fontSize: 28.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ],
                                        ),
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
                              18.0, 15.0, 18.0, 0.0),
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
                              18.0, 12.0, 18.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Text(
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
                                height: 590.0,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: Image.asset(
                                        'assets/images/Frame_48096470.png',
                                        width: double.infinity,
                                        height: 590.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-0.03, 0.88),
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
                                                    onTap: () => FocusScope.of(
                                                            dialogContext)
                                                        .unfocus(),
                                                    child:
                                                        const ReviewCompCopy2Widget(),
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
                                        onPressed: () {
                                          print('IconButton pressed ...');
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
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 100.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Container(
                                  width: 58.0,
                                  height: 81.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).m500,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'assets/images/Frame_48096470.png',
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
                              Opacity(
                                opacity: 0.5,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Container(
                                    width: 58.0,
                                    height: 81.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).m500,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.asset(
                                              'assets/images/Frame_48096396.png',
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
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              18.0, 15.0, 18.0, 0.0),
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
                              18.0, 12.0, 18.0, 0.0),
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
                              18.0, 15.0, 18.0, 0.0),
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
                              18.0, 12.0, 18.0, 0.0),
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
              ),
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
