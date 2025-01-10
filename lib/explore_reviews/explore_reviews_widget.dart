import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/prod_reviews_comp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'explore_reviews_model.dart';
export 'explore_reviews_model.dart';

class ExploreReviewsWidget extends StatefulWidget {
  const ExploreReviewsWidget({super.key});

  @override
  State<ExploreReviewsWidget> createState() => _ExploreReviewsWidgetState();
}

class _ExploreReviewsWidgetState extends State<ExploreReviewsWidget> {
  late ExploreReviewsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExploreReviewsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.prodcount = await ProductTable().queryRows(
        queryFn: (q) => q,
      );
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
                      borderColor: Colors.transparent,
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
                      'w1uztyn5' /* MODIE REVIEWS */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'PP Hatton',
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder<List<ProductRow>>(
                future: ProductTable().queryRows(
                  queryFn: (q) => q,
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
                  List<ProductRow> listViewProductRowList = snapshot.data!;

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewProductRowList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewProductRow =
                          listViewProductRowList[listViewIndex];
                      return FutureBuilder<ApiCallResponse>(
                        future: StorefrontAPIGroup.getItemCall.call(
                          idprod: listViewProductRow.idShopify,
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
                          final prodReviewsCompGetItemResponse = snapshot.data!;

                          return wrapWithModel(
                            model: _model.prodReviewsCompModels.getModel(
                              listViewProductRow.idShopify!,
                              listViewIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: ProdReviewsCompWidget(
                              key: Key(
                                'Keyi16_${listViewProductRow.idShopify!}',
                              ),
                              productid: listViewProductRow.idShopify!,
                              listimgs:
                                  StorefrontAPIGroup.getItemCall.imagesindx(
                                prodReviewsCompGetItemResponse.jsonBody,
                              )!,
                              price: StorefrontAPIGroup.getItemCall.price(
                                prodReviewsCompGetItemResponse.jsonBody,
                              )!,
                              title: StorefrontAPIGroup.getItemCall.title(
                                prodReviewsCompGetItemResponse.jsonBody,
                              )!,
                              brand: StorefrontAPIGroup.getItemCall.vendor(
                                prodReviewsCompGetItemResponse.jsonBody,
                              )!,
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
