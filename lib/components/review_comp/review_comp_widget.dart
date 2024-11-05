import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'review_comp_model.dart';
export 'review_comp_model.dart';

class ReviewCompWidget extends StatefulWidget {
  const ReviewCompWidget({super.key});

  @override
  State<ReviewCompWidget> createState() => _ReviewCompWidgetState();
}

class _ReviewCompWidgetState extends State<ReviewCompWidget> {
  late ReviewCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewCompModel());
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
                      'gfe7f338' /* REVIEW TITLE */,
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
                      'bc5er89c' /* @idasaporito */,
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
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 205.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).m500,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          height: 205.0,
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(1.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                  child: Image.asset(
                                                    'assets/images/Frame_48096470.png',
                                                    width: double.infinity,
                                                    height: 205.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.05, 0.06),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: const BoxDecoration(
                                                    color: Color(0x65A20A05),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.play_arrow,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        size: 24.0,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
                                      'msxqowjv' /* OVERALL SCORE */,
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
                                      'zy4p7ux2' /* A.L.C. */,
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
                                    '69v3m3ep' /* Axel Satin-Crepe Blazer */,
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
                                      'tcimxjr0' /* $120 */,
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
                                      '50hr3g6t' /* SHOP NOW  */,
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
                        'b6hvpv6p' /* SEE FULL REVIEW */,
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
