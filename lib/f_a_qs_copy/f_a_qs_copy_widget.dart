import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'f_a_qs_copy_model.dart';
export 'f_a_qs_copy_model.dart';

class FAQsCopyWidget extends StatefulWidget {
  const FAQsCopyWidget({super.key});

  @override
  State<FAQsCopyWidget> createState() => _FAQsCopyWidgetState();
}

class _FAQsCopyWidgetState extends State<FAQsCopyWidget> {
  late FAQsCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FAQsCopyModel());
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
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0x34000000),
                Colors.transparent,
                Colors.transparent,
                Color(0x34000000)
              ],
              stops: [0.0, 1.0, 1.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        borderRadius: 8.0,
                        buttonSize: 40.0,
                        icon: FaIcon(
                          FontAwesomeIcons.angleLeft,
                          color: FlutterFlowTheme.of(context).n950,
                          size: 18.0,
                        ),
                        onPressed: () async {
                          context.safePop();
                        },
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'curpy294' /* FAQS */,
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
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: FutureBuilder<List<FaqsRow>>(
                    future: FaqsTable().queryRows(
                      queryFn: (q) => q.order('id', ascending: true),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return const Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xFFA20A05),
                              ),
                            ),
                          ),
                        );
                      }
                      List<FaqsRow> listViewFaqsRowList = snapshot.data!;

                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewFaqsRowList.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 4.0),
                        itemBuilder: (context, listViewIndex) {
                          final listViewFaqsRow =
                              listViewFaqsRowList[listViewIndex];
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      listViewFaqsRow.title,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'PP Hatton',
                                            color: FlutterFlowTheme.of(context)
                                                .m500,
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              FutureBuilder<List<FaqsOptionsRow>>(
                                future: FaqsOptionsTable().queryRows(
                                  queryFn: (q) => q
                                      .eq(
                                        'faq_id',
                                        listViewFaqsRow.id,
                                      )
                                      .order('id', ascending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return const Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFA20A05),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<FaqsOptionsRow>
                                      listViewFaqsOptionsRowList =
                                      snapshot.data!;

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewFaqsOptionsRowList.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 8.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewFaqsOptionsRow =
                                          listViewFaqsOptionsRowList[
                                              listViewIndex];
                                      return Container(
                                        width: double.infinity,
                                        height: 34.0,
                                        constraints: const BoxConstraints(
                                          minHeight: 34.0,
                                          maxHeight: 160.0,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            width: 0.5,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ytksb0vh' /* How do I earn rewards points? */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: const Color(
                                                                0xFFFF0808),
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderRadius: 8.0,
                                                    buttonSize: 30.0,
                                                    icon: const Icon(
                                                      Icons.close_sharp,
                                                      color: Color(0xFF292D32),
                                                      size: 12.0,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 50.0,
                  decoration: const BoxDecoration(),
                ),
                Container(
                  width: double.infinity,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).m200,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'oqhehfgo' /* Couldn’t find what you were lo... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n600,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ].divide(const SizedBox(width: 12.0)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'pkt5y0k8' /* Feel free to contact us at hel... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).n600,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ].divide(const SizedBox(width: 12.0)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 14.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await launchURL(
                                    'https://www.instagram.com/modielifestyle/');
                              },
                              child: Container(
                                width: 24.0,
                                height: 24.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).m500,
                                  shape: BoxShape.circle,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.instagram,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 14.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await launchURL(
                                    'https://www.tiktok.com/@modielifestyle?_t=8jnD165DxDd&_r=1');
                              },
                              child: Container(
                                width: 24.0,
                                height: 24.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).m500,
                                  shape: BoxShape.circle,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.tiktok,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 14.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(width: 12.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
