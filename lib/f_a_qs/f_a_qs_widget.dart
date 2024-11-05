import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'f_a_qs_model.dart';
export 'f_a_qs_model.dart';

class FAQsWidget extends StatefulWidget {
  const FAQsWidget({super.key});

  @override
  State<FAQsWidget> createState() => _FAQsWidgetState();
}

class _FAQsWidgetState extends State<FAQsWidget> {
  late FAQsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FAQsModel());
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
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
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
                          '63gvizky' /* FAQS */,
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

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewFaqsRowList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewFaqsRow =
                              listViewFaqsRowList[listViewIndex];
                          return Padding(
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
                                        color:
                                            FlutterFlowTheme.of(context).m500,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
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
        ),
      ),
    );
  }
}
