import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'our_brands_info_model.dart';
export 'our_brands_info_model.dart';

class OurBrandsInfoWidget extends StatefulWidget {
  const OurBrandsInfoWidget({
    super.key,
    required this.val,
  });

  final int? val;

  @override
  State<OurBrandsInfoWidget> createState() => _OurBrandsInfoWidgetState();
}

class _OurBrandsInfoWidgetState extends State<OurBrandsInfoWidget> {
  late OurBrandsInfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OurBrandsInfoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BrandImagesRow>>(
      future: BrandImagesTable().querySingleRow(
        queryFn: (q) => q.eqOrNull(
          'brand_id',
          widget.val,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).m200,
            body: const Center(
              child: SizedBox(
                width: 24.0,
                height: 24.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFA20A05),
                  ),
                ),
              ),
            ),
          );
        }
        List<BrandImagesRow> ourBrandsInfoBrandImagesRowList = snapshot.data!;

        final ourBrandsInfoBrandImagesRow =
            ourBrandsInfoBrandImagesRowList.isNotEmpty
                ? ourBrandsInfoBrandImagesRowList.first
                : null;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).m200,
            body: FutureBuilder<List<BrandRow>>(
              future: BrandTable().querySingleRow(
                queryFn: (q) => q.eqOrNull(
                  'brand_id',
                  widget.val,
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
                List<BrandRow> columnBrandRowList = snapshot.data!;

                final columnBrandRow = columnBrandRowList.isNotEmpty
                    ? columnBrandRowList.first
                    : null;

                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 100.0,
                        height: 43.0,
                        decoration: const BoxDecoration(),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  1.0, 0.0, 0.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                hoverColor: Colors.transparent,
                                icon: Icon(
                                  FFIcons.kvectorConverted,
                                  color: FlutterFlowTheme.of(context).n950,
                                  size: 17.0,
                                ),
                                onPressed: () async {
                                  context.safePop();
                                },
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '39y4w0md' /* OUR BRANDS */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
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
                        width: double.infinity,
                        height: 263.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              ourBrandsInfoBrandImagesRow!.indexImage!,
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
                            Container(
                              width: 100.0,
                              height: 225.0,
                              decoration: const BoxDecoration(),
                            ),
                            Text(
                              valueOrDefault<String>(
                                columnBrandRow?.website,
                                '- - ',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 275.0,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                            ),
                            Flexible(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.5,
                                          height: 264.0,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: Image.network(
                                                ourBrandsInfoBrandImagesRow
                                                    .brandDetails!,
                                              ).image,
                                            ),
                                            border: Border.all(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 1.0,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).n950,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 100.0,
                                            height: 20.0,
                                            decoration: const BoxDecoration(),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'satxh2dk' /* BRAND DETAILS */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'PP Hatton',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .m500,
                                                  fontSize: 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Container(
                                            width: 100.0,
                                            height: 30.0,
                                            decoration: const BoxDecoration(),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'thh0tu7p' /* OFFERING: */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n900,
                                                  fontSize: 12.0,
                                                  letterSpacing: 1.0,
                                                  lineHeight: 1.0,
                                                ),
                                          ),
                                          Container(
                                            width: 100.0,
                                            height: 10.0,
                                            decoration: const BoxDecoration(),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              columnBrandRow?.offering,
                                              '- - ',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  lineHeight: 1.0,
                                                ),
                                          ),
                                          Container(
                                            width: 100.0,
                                            height: 15.0,
                                            decoration: const BoxDecoration(),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'qn75cq1b' /* LOCATED IN: */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n900,
                                                  fontSize: 12.0,
                                                  letterSpacing: 1.0,
                                                  lineHeight: 2.0,
                                                ),
                                          ),
                                          Container(
                                            width: 100.0,
                                            height: 10.0,
                                            decoration: const BoxDecoration(),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              columnBrandRow?.location,
                                              '- - ',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  lineHeight: 1.0,
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
                      Container(
                        width: double.infinity,
                        height: 400.0,
                        decoration: const BoxDecoration(),
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
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 100.0,
                                            height: 15.0,
                                            decoration: const BoxDecoration(),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'wpvt8lzb' /* PHILOSOPHY */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'PP Hatton',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n950,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Container(
                                            width: 100.0,
                                            height: 10.0,
                                            decoration: const BoxDecoration(),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'q1lgyg2s' /* MISSION: */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n900,
                                                  fontSize: 12.0,
                                                  letterSpacing: 1.0,
                                                  fontWeight: FontWeight.w600,
                                                  lineHeight: 2.0,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 16.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                columnBrandRow?.mission,
                                                '-  -',
                                              ),
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .n800,
                                                    fontSize: 10.0,
                                                    letterSpacing: 0.0,
                                                    lineHeight: 1.8,
                                                  ),
                                            ),
                                          ),
                                          Container(
                                            width: 100.0,
                                            height: 10.0,
                                            decoration: const BoxDecoration(),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'x3r9qklz' /* VISION: */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n900,
                                                  fontSize: 12.0,
                                                  letterSpacing: 1.0,
                                                  fontWeight: FontWeight.w600,
                                                  lineHeight: 2.0,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 16.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                columnBrandRow?.vision,
                                                '-  -',
                                              ),
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .n800,
                                                    fontSize: 10.0,
                                                    letterSpacing: 0.0,
                                                    lineHeight: 1.8,
                                                  ),
                                            ),
                                          ),
                                          Container(
                                            width: 20.0,
                                            height: 20.0,
                                            decoration: const BoxDecoration(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 1.0,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).n950,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                  ourBrandsInfoBrandImagesRow
                                                      .philosophy!,
                                                ).image,
                                              ),
                                              border: Border.all(
                                                color: Colors.transparent,
                                                width: 0.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                  ourBrandsInfoBrandImagesRow
                                                      .philosophy!,
                                                ).image,
                                              ),
                                              border: Border.all(
                                                color: Colors.transparent,
                                                width: 0.0,
                                              ),
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
                      Container(
                        width: double.infinity,
                        height: 264.0,
                        decoration: const BoxDecoration(),
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
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                  ourBrandsInfoBrandImagesRow
                                                      .story!,
                                                ).image,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 1.0,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).n950,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          14.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 100.0,
                                            height: 20.0,
                                            decoration: const BoxDecoration(),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '3ud42ctn' /* STORY */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'PP Hatton',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n950,
                                                  fontSize: 22.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Container(
                                            width: 100.0,
                                            height: 10.0,
                                            decoration: const BoxDecoration(),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                columnBrandRow?.story,
                                                '- - ',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .n800,
                                                    fontSize: 10.0,
                                                    letterSpacing: 0.4,
                                                    lineHeight: 1.5,
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
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'x1xc971y' /* FOUNDING TEAM */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 10.0, 16.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  columnBrandRow?.team,
                                  '- - ',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).n800,
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                      lineHeight: 1.8,
                                    ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 30.0,
                              decoration: const BoxDecoration(),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 264.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: Image.network(
                              ourBrandsInfoBrandImagesRow.team!,
                            ).image,
                          ),
                          border: Border.all(
                            color: Colors.transparent,
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
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'kdu70tq9' /* ENVIRONMENTAL RESPONSIBILITY */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).m500,
                                      fontSize: 32.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 10.0,
                              decoration: const BoxDecoration(),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'xehef7a8' /* MANUFACTURING PRACTICES */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 10.0, 16.0, 0.0),
                              child: FutureBuilder<List<BrandPracticesRow>>(
                                future: BrandPracticesTable().querySingleRow(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'brand_id',
                                        widget.val,
                                      )
                                      .eqOrNull(
                                        'practice_id',
                                        1,
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<BrandPracticesRow>
                                      containerBrandPracticesRowList =
                                      snapshot.data!;

                                  final containerBrandPracticesRow =
                                      containerBrandPracticesRowList.isNotEmpty
                                          ? containerBrandPracticesRowList.first
                                          : null;

                                  return Container(
                                    width: double.infinity,
                                    height: 34.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22.0),
                                      border: Border.all(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        width: 0.5,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          9.0, 0.0, 8.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'enqle66s' /* Waste Generation */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              containerBrandPracticesRow
                                                  ?.status,
                                              '- - ',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: () {
                                                    if (containerBrandPracticesRow
                                                            ?.status ==
                                                        'Minimal') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (containerBrandPracticesRow
                                                            ?.status ==
                                                        'Moderate') {
                                                      return const Color(0xFFBC8A2E);
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .m500;
                                                    }
                                                  }(),
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 10.0, 16.0, 0.0),
                              child: FutureBuilder<List<BrandPracticesRow>>(
                                future: BrandPracticesTable().querySingleRow(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'brand_id',
                                        widget.val,
                                      )
                                      .eqOrNull(
                                        'practice_id',
                                        2,
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<BrandPracticesRow>
                                      containerBrandPracticesRowList =
                                      snapshot.data!;

                                  final containerBrandPracticesRow =
                                      containerBrandPracticesRowList.isNotEmpty
                                          ? containerBrandPracticesRowList.first
                                          : null;

                                  return Container(
                                    width: double.infinity,
                                    height: 34.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22.0),
                                      border: Border.all(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        width: 0.5,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          9.0, 0.0, 8.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'g3zr2u2m' /* Water Conservation */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              containerBrandPracticesRow
                                                  ?.status,
                                              '- - ',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: () {
                                                    if (containerBrandPracticesRow
                                                            ?.status ==
                                                        'High') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (containerBrandPracticesRow
                                                            ?.status ==
                                                        'Medium') {
                                                      return const Color(0xFFBC8A2E);
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .m500;
                                                    }
                                                  }(),
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 10.0, 16.0, 0.0),
                              child: FutureBuilder<List<BrandPracticesRow>>(
                                future: BrandPracticesTable().querySingleRow(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'brand_id',
                                        widget.val,
                                      )
                                      .eqOrNull(
                                        'practice_id',
                                        3,
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<BrandPracticesRow>
                                      containerBrandPracticesRowList =
                                      snapshot.data!;

                                  final containerBrandPracticesRow =
                                      containerBrandPracticesRowList.isNotEmpty
                                          ? containerBrandPracticesRowList.first
                                          : null;

                                  return Container(
                                    width: double.infinity,
                                    height: 34.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22.0),
                                      border: Border.all(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        width: 0.5,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          9.0, 0.0, 8.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'zq96foaz' /* Energy Use in Production */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              containerBrandPracticesRow
                                                  ?.status,
                                              '- - ',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: () {
                                                    if (containerBrandPracticesRow
                                                            ?.status ==
                                                        'Absent') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (containerBrandPracticesRow
                                                            ?.status ==
                                                        'Partial/ Not fully implemented') {
                                                      return const Color(0xFFBC8A2E);
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .m500;
                                                    }
                                                  }(),
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 10.0, 16.0, 0.0),
                              child: FutureBuilder<List<BrandPracticesRow>>(
                                future: BrandPracticesTable().querySingleRow(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'brand_id',
                                        widget.val,
                                      )
                                      .eqOrNull(
                                        'practice_id',
                                        4,
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<BrandPracticesRow>
                                      containerBrandPracticesRowList =
                                      snapshot.data!;

                                  final containerBrandPracticesRow =
                                      containerBrandPracticesRowList.isNotEmpty
                                          ? containerBrandPracticesRowList.first
                                          : null;

                                  return Container(
                                    width: double.infinity,
                                    height: 34.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22.0),
                                      border: Border.all(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        width: 0.5,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          9.0, 0.0, 8.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'sf8xdk33' /* Product's Carbon Footprint Mea... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              containerBrandPracticesRow
                                                  ?.status,
                                              '- - ',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: () {
                                                    if (containerBrandPracticesRow
                                                            ?.status ==
                                                        'Minimal') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (containerBrandPracticesRow
                                                            ?.status ==
                                                        'Partial') {
                                                      return const Color(0xFFBC8A2E);
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .m500;
                                                    }
                                                  }(),
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 25.0,
                              decoration: const BoxDecoration(),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'fqxebbcg' /* MATERIALS AND PACKAGING */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 10.0, 16.0, 0.0),
                              child: FutureBuilder<List<BrandMaterialsRow>>(
                                future: BrandMaterialsTable().querySingleRow(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'brand_id',
                                        widget.val,
                                      )
                                      .eqOrNull(
                                        'material_id',
                                        1,
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<BrandMaterialsRow>
                                      containerBrandMaterialsRowList =
                                      snapshot.data!;

                                  final containerBrandMaterialsRow =
                                      containerBrandMaterialsRowList.isNotEmpty
                                          ? containerBrandMaterialsRowList.first
                                          : null;

                                  return Container(
                                    width: double.infinity,
                                    height: 34.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22.0),
                                      border: Border.all(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        width: 0.5,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          9.0, 0.0, 8.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'dck5h7qr' /* Use of Certified Materials */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              containerBrandMaterialsRow
                                                  ?.status,
                                              '- - ',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: () {
                                                    if (containerBrandMaterialsRow
                                                            ?.status ==
                                                        'Full') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (containerBrandMaterialsRow
                                                            ?.status ==
                                                        'Partial') {
                                                      return const Color(0xFFBC8A2E);
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .m500;
                                                    }
                                                  }(),
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 10.0, 16.0, 0.0),
                              child: FutureBuilder<List<BrandMaterialsRow>>(
                                future: BrandMaterialsTable().querySingleRow(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'brand_id',
                                        widget.val,
                                      )
                                      .eqOrNull(
                                        'material_id',
                                        2,
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<BrandMaterialsRow>
                                      containerBrandMaterialsRowList =
                                      snapshot.data!;

                                  final containerBrandMaterialsRow =
                                      containerBrandMaterialsRowList.isNotEmpty
                                          ? containerBrandMaterialsRowList.first
                                          : null;

                                  return Container(
                                    width: double.infinity,
                                    height: 34.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22.0),
                                      border: Border.all(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        width: 0.5,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          9.0, 0.0, 8.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '54jjo257' /* Packaging */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              containerBrandMaterialsRow
                                                  ?.status,
                                              '- - ',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: () {
                                                    if (containerBrandMaterialsRow
                                                            ?.status ==
                                                        'Sustainable') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (containerBrandMaterialsRow
                                                            ?.status ==
                                                        'Mixed') {
                                                      return const Color(0xFFBC8A2E);
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .m500;
                                                    }
                                                  }(),
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 25.0,
                              decoration: const BoxDecoration(),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'myyoh6dg' /* SUPPLY CHAIN AND PRODUCTION */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 10.0, 16.0, 0.0),
                              child: FutureBuilder<List<BrandEthicsRow>>(
                                future: BrandEthicsTable().querySingleRow(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'brand_id',
                                        widget.val,
                                      )
                                      .eqOrNull(
                                        'ethical_id',
                                        1,
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<BrandEthicsRow>
                                      containerBrandEthicsRowList =
                                      snapshot.data!;

                                  final containerBrandEthicsRow =
                                      containerBrandEthicsRowList.isNotEmpty
                                          ? containerBrandEthicsRowList.first
                                          : null;

                                  return Container(
                                    width: double.infinity,
                                    height: 34.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22.0),
                                      border: Border.all(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        width: 0.5,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          9.0, 0.0, 8.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '8mvdmeuk' /* Local Production */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              containerBrandEthicsRow?.status,
                                              '- - ',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: () {
                                                    if (containerBrandEthicsRow
                                                            ?.status ==
                                                        'Local') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (containerBrandEthicsRow
                                                            ?.status ==
                                                        'Short-haul') {
                                                      return const Color(0xFFBC8A2E);
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .m500;
                                                    }
                                                  }(),
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 10.0, 16.0, 0.0),
                              child: FutureBuilder<List<BrandEthicsRow>>(
                                future: BrandEthicsTable().querySingleRow(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'brand_id',
                                        widget.val,
                                      )
                                      .eqOrNull(
                                        'ethical_id',
                                        2,
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<BrandEthicsRow>
                                      containerBrandEthicsRowList =
                                      snapshot.data!;

                                  final containerBrandEthicsRow =
                                      containerBrandEthicsRowList.isNotEmpty
                                          ? containerBrandEthicsRowList.first
                                          : null;

                                  return Container(
                                    width: double.infinity,
                                    height: 34.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22.0),
                                      border: Border.all(
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        width: 0.5,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          9.0, 0.0, 8.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '1jxtweqb' /* Transparency and Traceability ... */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .n800,
                                                      fontSize: 10.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              containerBrandEthicsRow?.status,
                                              '- - ',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: () {
                                                    if (containerBrandEthicsRow
                                                            ?.status ==
                                                        'Full') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (containerBrandEthicsRow
                                                            ?.status ==
                                                        'Partial') {
                                                      return const Color(0xFFBC8A2E);
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .m500;
                                                    }
                                                  }(),
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 30.0,
                              decoration: const BoxDecoration(),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 257.0,
                        decoration: const BoxDecoration(),
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
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 100.0,
                                          height: 20.0,
                                          decoration: const BoxDecoration(),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'w7el0uh8' /* PRODUCT PRODUCTION */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'PP Hatton',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n950,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Container(
                                          width: 100.0,
                                          height: 10.0,
                                          decoration: const BoxDecoration(),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'itlk48f5' /* MATERIALS: */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Expanded(
                                          child: FutureBuilder<
                                              List<BrandProductmaterialRow>>(
                                            future: BrandProductmaterialTable()
                                                .queryRows(
                                              queryFn: (q) => q.eqOrNull(
                                                'brand_id',
                                                columnBrandRow?.brandId,
                                              ),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return const Center(
                                                  child: SizedBox(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        Color(0xFFA20A05),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<BrandProductmaterialRow>
                                                  listViewBrandProductmaterialRowList =
                                                  snapshot.data!;

                                              return ListView.separated(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewBrandProductmaterialRowList
                                                        .length,
                                                separatorBuilder: (_, __) =>
                                                    const SizedBox(height: 1.0),
                                                itemBuilder:
                                                    (context, listViewIndex) {
                                                  final listViewBrandProductmaterialRow =
                                                      listViewBrandProductmaterialRowList[
                                                          listViewIndex];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(32.0, 0.0,
                                                                0.0, 0.0),
                                                    child: FutureBuilder<
                                                        List<
                                                            ProductMaterialRow>>(
                                                      future:
                                                          ProductMaterialTable()
                                                              .querySingleRow(
                                                        queryFn: (q) =>
                                                            q.eqOrNull(
                                                          'id',
                                                          listViewBrandProductmaterialRow
                                                              .prodmaterialId,
                                                        ),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return const Center(
                                                            child: SizedBox(
                                                              width: 24.0,
                                                              height: 24.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  Color(
                                                                      0xFFA20A05),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<ProductMaterialRow>
                                                            rowProductMaterialRowList =
                                                            snapshot.data!;

                                                        final rowProductMaterialRow =
                                                            rowProductMaterialRowList
                                                                    .isNotEmpty
                                                                ? rowProductMaterialRowList
                                                                    .first
                                                                : null;

                                                        return Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 2.0,
                                                              height: 2.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .n950,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  rowProductMaterialRow
                                                                      ?.material,
                                                                  '- - ',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .n800,
                                                                      fontSize:
                                                                          10.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'hgiqv8qy' /* PARTNERS: */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n800,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Expanded(
                                          child: FutureBuilder<
                                              List<BrandPartnersRow>>(
                                            future:
                                                BrandPartnersTable().queryRows(
                                              queryFn: (q) => q.eqOrNull(
                                                'brand_id',
                                                columnBrandRow?.brandId,
                                              ),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return const Center(
                                                  child: SizedBox(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        Color(0xFFA20A05),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<BrandPartnersRow>
                                                  listViewBrandPartnersRowList =
                                                  snapshot.data!;

                                              return ListView.separated(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewBrandPartnersRowList
                                                        .length,
                                                separatorBuilder: (_, __) =>
                                                    const SizedBox(height: 1.0),
                                                itemBuilder:
                                                    (context, listViewIndex) {
                                                  final listViewBrandPartnersRow =
                                                      listViewBrandPartnersRowList[
                                                          listViewIndex];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(32.0, 0.0,
                                                                0.0, 0.0),
                                                    child: FutureBuilder<
                                                        List<PartnersRow>>(
                                                      future: PartnersTable()
                                                          .querySingleRow(
                                                        queryFn: (q) =>
                                                            q.eqOrNull(
                                                          'partner_id',
                                                          listViewBrandPartnersRow
                                                              .partnerId,
                                                        ),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return const Center(
                                                            child: SizedBox(
                                                              width: 24.0,
                                                              height: 24.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  Color(
                                                                      0xFFA20A05),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<PartnersRow>
                                                            rowPartnersRowList =
                                                            snapshot.data!;

                                                        final rowPartnersRow =
                                                            rowPartnersRowList
                                                                    .isNotEmpty
                                                                ? rowPartnersRowList
                                                                    .first
                                                                : null;

                                                        return Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 2.0,
                                                              height: 2.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .n950,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  rowPartnersRow
                                                                      ?.partnerName,
                                                                  '- - ',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .n800,
                                                                      fontSize:
                                                                          10.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 1.0,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).n950,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: double.infinity,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                  ourBrandsInfoBrandImagesRow
                                                      .philosophy!,
                                                ).image,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: double.infinity,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                  ourBrandsInfoBrandImagesRow
                                                      .philosophy!,
                                                ).image,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: double.infinity,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                  ourBrandsInfoBrandImagesRow
                                                      .philosophy!,
                                                ).image,
                                              ),
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
                      Container(
                        width: double.infinity,
                        height: 124.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              ourBrandsInfoBrandImagesRow.team!,
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
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'pfsph1ub' /* ENVIRONMENTAL IMPACT IN DETAIL... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 1.0),
                                        child: Icon(
                                          Icons.chevron_right,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          size: 14.0,
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
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 30.0,
                              decoration: const BoxDecoration(),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '2jj24fro' /* SOCIAL RESPONSIBILITY */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).m500,
                                      fontSize: 32.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 15.0,
                              decoration: const BoxDecoration(),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'jgu0fkcr' /* ETHICAL LABOUR PRACTICES */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child:
                                  FutureBuilder<List<BrandResponsibilityRow>>(
                                future:
                                    BrandResponsibilityTable().querySingleRow(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'brand_id',
                                        2,
                                      )
                                      .eqOrNull(
                                        'resp',
                                        1,
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<BrandResponsibilityRow>
                                      textBrandResponsibilityRowList =
                                      snapshot.data!;

                                  final textBrandResponsibilityRow =
                                      textBrandResponsibilityRowList.isNotEmpty
                                          ? textBrandResponsibilityRowList.first
                                          : null;

                                  return Text(
                                    valueOrDefault<String>(
                                      textBrandResponsibilityRow?.value,
                                      '- - ',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color:
                                              FlutterFlowTheme.of(context).n800,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          lineHeight: 1.8,
                                        ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 15.0,
                              decoration: const BoxDecoration(),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ft007jpg' /* PEOPLE POLICIES */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child:
                                  FutureBuilder<List<BrandResponsibilityRow>>(
                                future:
                                    BrandResponsibilityTable().querySingleRow(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'brand_id',
                                        2,
                                      )
                                      .eqOrNull(
                                        'resp',
                                        2,
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<BrandResponsibilityRow>
                                      textBrandResponsibilityRowList =
                                      snapshot.data!;

                                  final textBrandResponsibilityRow =
                                      textBrandResponsibilityRowList.isNotEmpty
                                          ? textBrandResponsibilityRowList.first
                                          : null;

                                  return Text(
                                    valueOrDefault<String>(
                                      textBrandResponsibilityRow?.value,
                                      '- - ',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color:
                                              FlutterFlowTheme.of(context).n800,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          lineHeight: 1.8,
                                        ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 15.0,
                              decoration: const BoxDecoration(),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'tdv1krqf' /* HEALTH SAFETY & WELLBEING */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child:
                                  FutureBuilder<List<BrandResponsibilityRow>>(
                                future:
                                    BrandResponsibilityTable().querySingleRow(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'brand_id',
                                        2,
                                      )
                                      .eqOrNull(
                                        'resp',
                                        3,
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<BrandResponsibilityRow>
                                      textBrandResponsibilityRowList =
                                      snapshot.data!;

                                  final textBrandResponsibilityRow =
                                      textBrandResponsibilityRowList.isNotEmpty
                                          ? textBrandResponsibilityRowList.first
                                          : null;

                                  return Text(
                                    valueOrDefault<String>(
                                      textBrandResponsibilityRow?.value,
                                      '- - ',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color:
                                              FlutterFlowTheme.of(context).n800,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          lineHeight: 1.8,
                                        ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 15.0,
                              decoration: const BoxDecoration(),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'y9tp1yoy' /* DIVERSITY, EQUALITY, AND INCLU... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child:
                                  FutureBuilder<List<BrandResponsibilityRow>>(
                                future:
                                    BrandResponsibilityTable().querySingleRow(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'brand_id',
                                        2,
                                      )
                                      .eqOrNull(
                                        'resp',
                                        4,
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<BrandResponsibilityRow>
                                      textBrandResponsibilityRowList =
                                      snapshot.data!;

                                  final textBrandResponsibilityRow =
                                      textBrandResponsibilityRowList.isNotEmpty
                                          ? textBrandResponsibilityRowList.first
                                          : null;

                                  return Text(
                                    valueOrDefault<String>(
                                      textBrandResponsibilityRow?.value,
                                      '- - ',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color:
                                              FlutterFlowTheme.of(context).n800,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          lineHeight: 1.8,
                                        ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 15.0,
                              decoration: const BoxDecoration(),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'vpk8kj5w' /* COMMUNITY ENGAGEMENT */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child:
                                  FutureBuilder<List<BrandResponsibilityRow>>(
                                future:
                                    BrandResponsibilityTable().querySingleRow(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'brand_id',
                                        2,
                                      )
                                      .eqOrNull(
                                        'resp',
                                        5,
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<BrandResponsibilityRow>
                                      textBrandResponsibilityRowList =
                                      snapshot.data!;

                                  final textBrandResponsibilityRow =
                                      textBrandResponsibilityRowList.isNotEmpty
                                          ? textBrandResponsibilityRowList.first
                                          : null;

                                  return Text(
                                    valueOrDefault<String>(
                                      textBrandResponsibilityRow?.value,
                                      '- - ',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color:
                                              FlutterFlowTheme.of(context).n800,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          lineHeight: 1.8,
                                        ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 30.0,
                              decoration: const BoxDecoration(),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 124.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              ourBrandsInfoBrandImagesRow.team!,
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
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'wtyq0wrp' /* SOCIAL IMPACT IN DETAIL */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 1.0),
                                        child: Icon(
                                          Icons.chevron_right,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          size: 14.0,
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
                      Container(
                        width: double.infinity,
                        height: 196.0,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'n1gnnu2b' /* CERTIFICATIONS & AWARDS */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).m500,
                                      fontSize: 32.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child:
                                  FutureBuilder<List<BrandCertificationsRow>>(
                                future: BrandCertificationsTable().queryRows(
                                  queryFn: (q) => q.eqOrNull(
                                    'brand_id',
                                    2,
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<BrandCertificationsRow>
                                      rowBrandCertificationsRowList =
                                      snapshot.data!;

                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        rowBrandCertificationsRowList.length,
                                        (rowIndex) {
                                      final rowBrandCertificationsRow =
                                          rowBrandCertificationsRowList[
                                              rowIndex];
                                      return Container(
                                        width: 120.0,
                                        height: 64.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: Image.network(
                                              rowBrandCertificationsRow
                                                  .imgCert!,
                                            ).image,
                                          ),
                                        ),
                                      );
                                    }).divide(const SizedBox(width: 12.0)),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 300.0,
                        decoration: const BoxDecoration(),
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
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'vohl0bmk' /* WHAT'S NEW */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'PP Hatton',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .m500,
                                                fontSize: 32.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'e1d24ksr' /* VIEW MORE */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n950,
                                                  fontSize: 12.0,
                                                  letterSpacing: 1.2,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Transform.rotate(
                                            angle: 180.0 * (math.pi / 180),
                                            child: Icon(
                                              FFIcons.kvectorConverted,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                              size: 12.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          1.0, 0.0, 0.0, 0.0),
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          Container(
                                            width: 108.0,
                                            height: 190.0,
                                            decoration: const BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 164.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/woman-spa-2.png',
                                                      ).image,
                                                    ),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .n950,
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100.0,
                                                  height: 10.0,
                                                  decoration: const BoxDecoration(),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          3.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't2i2n9u4' /* A.L.C. */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .n900,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ],
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
                      Container(
                        width: double.infinity,
                        height: 300.0,
                        decoration: const BoxDecoration(),
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
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '7p27puf9' /* BEST SELLERS */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'PP Hatton',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .m500,
                                                fontSize: 32.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '7r4zznat' /* VIEW MORE */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n950,
                                                  fontSize: 12.0,
                                                  letterSpacing: 1.2,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Transform.rotate(
                                            angle: 180.0 * (math.pi / 180),
                                            child: Icon(
                                              FFIcons.kvectorConverted,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                              size: 12.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          1.0, 0.0, 0.0, 0.0),
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          Container(
                                            width: 108.0,
                                            height: 190.0,
                                            decoration: const BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 164.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/woman-spa-2.png',
                                                      ).image,
                                                    ),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .n950,
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100.0,
                                                  height: 10.0,
                                                  decoration: const BoxDecoration(),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          3.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'muxeno9y' /* A.L.C. */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .n900,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ],
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
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
