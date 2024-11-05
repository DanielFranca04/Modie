import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'review_comp_copy2_model.dart';
export 'review_comp_copy2_model.dart';

class ReviewCompCopy2Widget extends StatefulWidget {
  const ReviewCompCopy2Widget({super.key});

  @override
  State<ReviewCompCopy2Widget> createState() => _ReviewCompCopy2WidgetState();
}

class _ReviewCompCopy2WidgetState extends State<ReviewCompCopy2Widget> {
  late ReviewCompCopy2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewCompCopy2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 510.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).m200,
          boxShadow: const [
            BoxShadow(
              blurRadius: 8.0,
              color: Color(0x0D000000),
              offset: Offset(
                0.0,
                4.0,
              ),
              spreadRadius: 8.0,
            )
          ],
          border: Border.all(
            color: FlutterFlowTheme.of(context).n950,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 30.0,
              height: 5.0,
              decoration: const BoxDecoration(),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'mipko0gk' /* REVIEW TITLE */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'PP Hatton',
                          color: FlutterFlowTheme.of(context).n950,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                          lineHeight: 2.0,
                        ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 14.0,
                      height: 14.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/delete-1--remove-add-button-buttons-delete-cross-x-mathematics-multiply-math.png',
                          ).image,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'fe67986n' /* @idasaporito */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: FlutterFlowTheme.of(context).n900,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 140.0,
                        height: 207.0,
                        decoration: const BoxDecoration(
                          color: Color(0x00A20A05),
                        ),
                        child: const FlutterFlowVideoPlayer(
                          path:
                              'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4',
                          videoType: VideoType.network,
                          width: 160.0,
                          height: 125.0,
                          aspectRatio: 0.65,
                          autoPlay: true,
                          looping: true,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 205.0,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 64.0,
                                    height: 98.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).m500,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/Frame_48096470.png',
                                          width: 64.0,
                                          height: 98.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 64.0,
                                    height: 98.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).m500,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/Frame_48096470.png',
                                          width: 64.0,
                                          height: 98.0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 64.0,
                                    height: 98.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).m500,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/Frame_48096470.png',
                                          width: 64.0,
                                          height: 98.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 64.0,
                                    height: 98.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).m500,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/Frame_48096470.png',
                                          width: 64.0,
                                          height: 98.0,
                                          fit: BoxFit.cover,
                                        ),
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
                  ),
                ].divide(const SizedBox(width: 0.0)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/woman-spa.png',
                            width: 82.67,
                            height: 124.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'nrmc1wxr' /* OVERALL SCORE */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'PP Hatton',
                                          color:
                                              FlutterFlowTheme.of(context).m500,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 8.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          FFIcons.kcircConverted,
                                          color:
                                              FlutterFlowTheme.of(context).m500,
                                          size: 12.0,
                                        ),
                                        Icon(
                                          FFIcons.kcircConverted,
                                          color:
                                              FlutterFlowTheme.of(context).m500,
                                          size: 12.0,
                                        ),
                                        Icon(
                                          FFIcons.kcircConverted,
                                          color:
                                              FlutterFlowTheme.of(context).m500,
                                          size: 12.0,
                                        ),
                                        Icon(
                                          FFIcons.kcircConverted,
                                          color:
                                              FlutterFlowTheme.of(context).m500,
                                          size: 12.0,
                                        ),
                                        Opacity(
                                          opacity: 0.2,
                                          child: Icon(
                                            FFIcons.kcircConverted,
                                            color: FlutterFlowTheme.of(context)
                                                .m500,
                                            size: 12.0,
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
                                  0.0, 7.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'jtsl3650' /* A.L.C. */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color:
                                              FlutterFlowTheme.of(context).n900,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'xlxvvg35' /* Axel Satin-Crepe Blazer */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n800,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'sud9ojx5' /* $120 */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color:
                                              FlutterFlowTheme.of(context).m500,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 14.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'e9jnprp4' /* SHOP NOW  */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color:
                                              FlutterFlowTheme.of(context).m500,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.underline,
                                        ),
                                  ),
                                  FaIcon(
                                    FontAwesomeIcons.greaterThan,
                                    color: FlutterFlowTheme.of(context).m500,
                                    size: 12.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(width: 5.0)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 15.0),
              child: Container(
                width: double.infinity,
                height: 52.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).n950,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'ujn7q0o6' /* SEE FULL REVIEW */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'PP Hatton',
                            color: FlutterFlowTheme.of(context).n50,
                            fontSize: 15.0,
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
    );
  }
}
