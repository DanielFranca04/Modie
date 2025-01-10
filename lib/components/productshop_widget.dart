import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'productshop_model.dart';
export 'productshop_model.dart';

class ProductshopWidget extends StatefulWidget {
  const ProductshopWidget({
    super.key,
    required this.idprodshopify,
    required this.idinternprod,
    required this.type,
    required this.overalscore,
  });

  final String? idprodshopify;
  final int? idinternprod;
  final String? type;
  final double? overalscore;

  @override
  State<ProductshopWidget> createState() => _ProductshopWidgetState();
}

class _ProductshopWidgetState extends State<ProductshopWidget> {
  late ProductshopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductshopModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 205.0,
      height: 440.0,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          FutureBuilder<ApiCallResponse>(
            future: StorefrontAPIGroup.getItemCall.call(
              idprod: widget.idprodshopify,
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
              final containerGetItemResponse = snapshot.data!;

              return InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'ExploreProduct',
                    queryParameters: {
                      'idProdShopify': serializeParam(
                        widget.idprodshopify,
                        ParamType.String,
                      ),
                      'idProdInternal': serializeParam(
                        widget.idinternprod,
                        ParamType.int,
                      ),
                    }.withoutNulls,
                  );
                },
                child: Container(
                  width: 204.0,
                  height: 439.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).m200,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 205.0,
                        height: 301.0,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.network(
                                valueOrDefault<String>(
                                  StorefrontAPIGroup.getItemCall.imageurl(
                                    containerGetItemResponse.jsonBody,
                                  ),
                                  '- - ',
                                ),
                                width: double.infinity,
                                height: 301.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.72, 0.98),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 5.0, 0.0),
                                child: Icon(
                                  FFIcons.kbag2,
                                  color: FlutterFlowTheme.of(context).n950,
                                  size: 24.0,
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.98, 0.97),
                              child: FutureBuilder<List<FavouritesRow>>(
                                future: FavouritesTable().querySingleRow(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'user_id',
                                        currentUserUid,
                                      )
                                      .eqOrNull(
                                        'product_id',
                                        widget.idprodshopify,
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
                                  List<FavouritesRow>
                                      conditionalBuilderFavouritesRowList =
                                      snapshot.data!;

                                  final conditionalBuilderFavouritesRow =
                                      conditionalBuilderFavouritesRowList
                                              .isNotEmpty
                                          ? conditionalBuilderFavouritesRowList
                                              .first
                                          : null;

                                  return Builder(
                                    builder: (context) {
                                      if (conditionalBuilderFavouritesRow?.id !=
                                          null) {
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await FavouritesTable().delete(
                                              matchingRows: (rows) => rows
                                                  .eqOrNull(
                                                    'user_id',
                                                    currentUserUid,
                                                  )
                                                  .eqOrNull(
                                                    'product_id',
                                                    widget.idprodshopify,
                                                  ),
                                            );
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.asset(
                                              'assets/images/archive-minus.png',
                                              width: 24.0,
                                              height: 24.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        );
                                      } else {
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await FavouritesTable().insert({
                                              'user_id': currentUserUid,
                                              'product_id':
                                                  widget.idprodshopify,
                                              'type': widget.type,
                                            });
                                          },
                                          child: Icon(
                                            FFIcons.karchiveMinus,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                        );
                                      }
                                    },
                                  );
                                },
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: double.infinity,
                                height: 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).n950,
                                ),
                              ),
                            ),
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
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 12.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'qnlb07uk' /* SCORE */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'PP Hatton',
                                            color: FlutterFlowTheme.of(context)
                                                .m500,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RatingBarIndicator(
                              itemBuilder: (context, index) => Icon(
                                FFIcons.kcircConverted,
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                              direction: Axis.horizontal,
                              rating: widget.overalscore!,
                              unratedColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              itemCount: 5,
                              itemSize: 12.0,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 8.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            StorefrontAPIGroup.getItemCall.vendor(
                              containerGetItemResponse.jsonBody,
                            ),
                            '- - ',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n900,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            StorefrontAPIGroup.getItemCall.title(
                              containerGetItemResponse.jsonBody,
                            ),
                            '- - ',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n800,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 8.0, 0.0, 0.0),
                        child: Text(
                          '£${StorefrontAPIGroup.getItemCall.price(
                            containerGetItemResponse.jsonBody,
                          )}',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).m500,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 1.0,
                          decoration: const BoxDecoration(),
                        ),
                      ),
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
              );
            },
          ),
          Container(
            width: 1.0,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).n950,
            ),
          ),
        ],
      ),
    );
  }
}
