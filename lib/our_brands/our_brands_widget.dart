import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'our_brands_model.dart';
export 'our_brands_model.dart';

class OurBrandsWidget extends StatefulWidget {
  const OurBrandsWidget({super.key});

  @override
  State<OurBrandsWidget> createState() => _OurBrandsWidgetState();
}

class _OurBrandsWidgetState extends State<OurBrandsWidget> {
  late OurBrandsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OurBrandsModel());
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
        backgroundColor: FlutterFlowTheme.of(context).m200,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 100.0,
              height: 45.0,
              decoration: const BoxDecoration(),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        FFIcons.kvectorConverted,
                        color: FlutterFlowTheme.of(context).n950,
                        size: 14.0,
                      ),
                      onPressed: () async {
                        context.safePop();
                      },
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'slrczpvx' /* OUR BRANDS */,
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
              height: 10.0,
              decoration: const BoxDecoration(),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlutterFlowChoiceChips(
                    options: [
                      ChipData(FFLocalizations.of(context).getText(
                        'wxxoli2d' /* Fashion */,
                      )),
                      ChipData(FFLocalizations.of(context).getText(
                        's742fn4o' /* Jewellery */,
                      ))
                    ],
                    onChanged: (val) => safeSetState(
                        () => _model.choiceChipsValue = val?.firstOrNull),
                    selectedChipStyle: ChipStyle(
                      backgroundColor: FlutterFlowTheme.of(context).m500,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      iconColor: FlutterFlowTheme.of(context).info,
                      iconSize: 16.0,
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    unselectedChipStyle: ChipStyle(
                      backgroundColor: const Color(0x00000000),
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.of(context).n950,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                              ),
                      iconColor: const Color(0x00000000),
                      iconSize: 16.0,
                      elevation: 0.0,
                      borderColor: FlutterFlowTheme.of(context).n950,
                      borderWidth: 0.5,
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    chipSpacing: 8.0,
                    rowSpacing: 8.0,
                    multiselect: false,
                    initialized: _model.choiceChipsValue != null,
                    alignment: WrapAlignment.start,
                    controller: _model.choiceChipsValueController ??=
                        FormFieldController<List<String>>(
                      [
                        FFLocalizations.of(context).getText(
                          'r54phlw1' /* Fashion */,
                        )
                      ],
                    ),
                    wrapped: true,
                  ),
                ],
              ),
            ),
            Container(
              width: 100.0,
              height: 15.0,
              decoration: const BoxDecoration(),
            ),
            FutureBuilder<List<BrandRow>>(
              future: BrandTable().queryRows(
                queryFn: (q) => q.eqOrNull(
                  'offering',
                  _model.choiceChipsValue,
                ),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return const Center(
                    child: SizedBox(
                      width: 24.0,
                      height: 24.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color(0xFFA20A05),
                        ),
                      ),
                    ),
                  );
                }
                List<BrandRow> listViewBrandRowList = snapshot.data!;

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewBrandRowList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewBrandRow =
                        listViewBrandRowList[listViewIndex];
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'OurBrandsInfo',
                          queryParameters: {
                            'val': serializeParam(
                              listViewBrandRow.brandId,
                              ParamType.int,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 145.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: const AlignmentDirectional(0.0, -0.62),
                            image: Image.asset(
                              'assets/images/Frame_48096396.png',
                            ).image,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '0${valueOrDefault<String>(
                                              functions.add1(listViewIndex),
                                              '- - ',
                                            )}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: listViewIndex == 0
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .m500
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .n950,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              listViewBrandRow.name,
                                              '- - ',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'PP Hatton',
                                                  color: listViewIndex == 0
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .m500
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .n950,
                                                  fontSize: 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ].divide(const SizedBox(height: 15.0)),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        if (_model.choiceChipsValue !=
                                            'Fashion')
                                          FlutterFlowIconButton(
                                            borderRadius: 8.0,
                                            buttonSize: 40.0,
                                            icon: Icon(
                                              Icons.chevron_right,
                                              color: listViewIndex == 0
                                                  ? FlutterFlowTheme.of(context)
                                                      .m500
                                                  : FlutterFlowTheme.of(context)
                                                      .n950,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              context.pushNamed(
                                                'OurBrandsInfo',
                                                queryParameters: {
                                                  'val': serializeParam(
                                                    listViewBrandRow.brandId,
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
