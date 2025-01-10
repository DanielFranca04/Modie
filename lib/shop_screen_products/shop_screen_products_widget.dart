import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/empty_fav_widget.dart';
import '/components/filter_widget.dart';
import '/components/img_comp_widget.dart';
import '/components/navbar/navbar_widget.dart';
import '/components/request_quiz_widget.dart';
import '/components/sort_by_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'shop_screen_products_model.dart';
export 'shop_screen_products_model.dart';

class ShopScreenProductsWidget extends StatefulWidget {
  const ShopScreenProductsWidget({
    super.key,
    required this.type,
    bool? requeststatus,
  }) : requeststatus = requeststatus ?? true;

  final String? type;
  final bool requeststatus;

  @override
  State<ShopScreenProductsWidget> createState() =>
      _ShopScreenProductsWidgetState();
}

class _ShopScreenProductsWidgetState extends State<ShopScreenProductsWidget> {
  late ShopScreenProductsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopScreenProductsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.coloroutput =
              await StorefrontAPIGroup.getMetaobjectsColorCall.call();

          _model.filter = 0;
          safeSetState(() {});
          while (_model.filter! <
              StorefrontAPIGroup.getMetaobjectsColorCall
                  .numberofcolors(
                    (_model.coloroutput?.jsonBody ?? ''),
                  )!
                  .length) {
            _model.colorValidator = await actions.checkColor(
              StorefrontAPIGroup.getMetaobjectsColorCall
                  .getCodeColor(
                    (_model.coloroutput?.jsonBody ?? ''),
                  )
                  ?.elementAtOrNull(_model.filter!),
            );
            if (_model.colorValidator == true) {
              FFAppState().insertAtIndexInColors(
                  _model.filter!,
                  ColorFilterStruct(
                    codeColor: StorefrontAPIGroup.getMetaobjectsColorCall
                        .getCodeColor(
                          (_model.coloroutput?.jsonBody ?? ''),
                        )
                        ?.elementAtOrNull(_model.filter!),
                    colorName: StorefrontAPIGroup.getMetaobjectsColorCall
                        .getColors(
                          (_model.coloroutput?.jsonBody ?? ''),
                        )
                        ?.elementAtOrNull(_model.filter!),
                  ));
              safeSetState(() {});
            }
            _model.filter = _model.filter! + 1;
            safeSetState(() {});
          }
          _model.filter = 0;
          safeSetState(() {});
        }),
        Future(() async {
          if (widget.requeststatus) {
            await Future.delayed(const Duration(milliseconds: 2000));
            await showDialog(
              context: context,
              builder: (dialogContext) {
                return Dialog(
                  elevation: 0,
                  insetPadding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  alignment: const AlignmentDirectional(0.0, 0.0)
                      .resolve(Directionality.of(context)),
                  child: GestureDetector(
                    onTap: () {
                      FocusScope.of(dialogContext).unfocus();
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child: RequestQuizWidget(
                      type:
                          widget.type == 'JEWELLERY' ? 'JEWELLERY' : 'FASHION',
                    ),
                  ),
                );
              },
            );
          }
        }),
      ]);
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

    return Builder(
      builder: (context) => GestureDetector(
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
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100.0,
                      height: 48.0,
                      decoration: const BoxDecoration(),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('ShopScreen');

                              FFAppState().Filter = FilterStruct();
                              FFAppState().Colors = [];
                              safeSetState(() {});
                            },
                            child: Icon(
                              FFIcons.kvectorConverted,
                              color: FlutterFlowTheme.of(context).n950,
                              size: 16.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                35.0, 4.0, 0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.type,
                                '- - ',
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
                                    lineHeight: 0.0,
                                  ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 24.0,
                                height: 24.0,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      FFIcons
                                          .kshoppingCart1ShoppingCartCheckout02,
                                      color: FlutterFlowTheme.of(context).n950,
                                      size: 16.0,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 24.0,
                                height: 24.0,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Icon(
                                        FFIcons
                                            .kshoppingCart1ShoppingCartCheckout,
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        size: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ].divide(const SizedBox(width: 7.0)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 10.0,
                      decoration: const BoxDecoration(),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowChoiceChips(
                              options: [
                                ChipData(FFLocalizations.of(context).getText(
                                  'et6fg9nj' /* All */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  'xmbnn9ka' /* Tops */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  'szmfzlyz' /* Wellness */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  'lqim06vu' /* Bohemian */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  '8lfkjz2t' /* Outdoorsy */,
                                ))
                              ],
                              onChanged: (val) => safeSetState(() =>
                                  _model.choiceChipsValue = val?.firstOrNull),
                              selectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
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
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
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
                                    'yphj06mj' /* All */,
                                  )
                                ],
                              ),
                              wrapped: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () {
                                      FocusScope.of(context).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: FilterWidget(
                                        type: widget.type!,
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: Container(
                              width: 79.42,
                              height: 24.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).n950,
                                  width: 0.5,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FFIcons.kframe48096519,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 12.0,
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'saj76o7z' /* Filter by */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color:
                                              FlutterFlowTheme.of(context).n950,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ].divide(const SizedBox(width: 2.0)),
                              ),
                            ),
                          ),
                          Builder(
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
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: GestureDetector(
                                        onTap: () {
                                          FocusScope.of(dialogContext)
                                              .unfocus();
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                        },
                                        child: const SizedBox(
                                          height: 428.0,
                                          width: double.infinity,
                                          child: SortByWidget(),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                width: 75.0,
                                height: 24.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).n950,
                                    width: 0.5,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '82ht9g5i' /* Sort by */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .n950,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: FlutterFlowTheme.of(context).n950,
                                      size: 12.0,
                                    ),
                                  ].divide(const SizedBox(width: 4.0)),
                                ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 10.0)),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
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
                            List<ProductRow> gridViewProductRowList =
                                snapshot.data!;

                            if (gridViewProductRowList.isEmpty) {
                              return const EmptyFavWidget();
                            }

                            return GridView.builder(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 0.0,
                                childAspectRatio: 0.45,
                              ),
                              scrollDirection: Axis.vertical,
                              itemCount: gridViewProductRowList.length,
                              itemBuilder: (context, gridViewIndex) {
                                final gridViewProductRow =
                                    gridViewProductRowList[gridViewIndex];
                                return FutureBuilder<ApiCallResponse>(
                                  future: StorefrontAPIGroup.getItemCall.call(
                                    idprod: gridViewProductRow.idShopify,
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
                                    final containerGetItemResponse =
                                        snapshot.data!;

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
                                              gridViewProductRow.idShopify,
                                              ParamType.String,
                                            ),
                                            'idProdInternal': serializeParam(
                                              gridViewProductRow.produtoId,
                                              ParamType.int,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Container(
                                        width: 205.0,
                                        height: 440.0,
                                        decoration: const BoxDecoration(),
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
                                                    width: double.infinity,
                                                    height: 1.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .n950,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: double.infinity,
                                                    height: 301.0,
                                                    child: Stack(
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .imgCompModels
                                                              .getModel(
                                                            gridViewProductRow
                                                                .idShopify!,
                                                            gridViewIndex,
                                                          ),
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: ImgCompWidget(
                                                            key: Key(
                                                              'Keymid_${gridViewProductRow.idShopify!}',
                                                            ),
                                                            imgsindex:
                                                                StorefrontAPIGroup
                                                                    .getItemCall
                                                                    .imagesindx(
                                                              containerGetItemResponse
                                                                  .jsonBody,
                                                            )!,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.72, 0.98),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Icon(
                                                              FFIcons.kbag2,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .n950,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.98, 0.97),
                                                          child: FutureBuilder<
                                                              List<
                                                                  FavouritesRow>>(
                                                            future: FavouritesTable()
                                                                .querySingleRow(
                                                              queryFn: (q) => q
                                                                  .eqOrNull(
                                                                    'user_id',
                                                                    currentUserUid,
                                                                  )
                                                                  .eqOrNull(
                                                                    'product_id',
                                                                    gridViewProductRow
                                                                        .idShopify,
                                                                  ),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return const Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 24.0,
                                                                    height:
                                                                        24.0,
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
                                                              List<FavouritesRow>
                                                                  conditionalBuilderFavouritesRowList =
                                                                  snapshot
                                                                      .data!;

                                                              final conditionalBuilderFavouritesRow =
                                                                  conditionalBuilderFavouritesRowList
                                                                          .isNotEmpty
                                                                      ? conditionalBuilderFavouritesRowList
                                                                          .first
                                                                      : null;

                                                              return Builder(
                                                                builder:
                                                                    (context) {
                                                                  if (conditionalBuilderFavouritesRow
                                                                          ?.id !=
                                                                      null) {
                                                                    return InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        await FavouritesTable()
                                                                            .delete(
                                                                          matchingRows: (rows) => rows
                                                                              .eqOrNull(
                                                                                'user_id',
                                                                                currentUserUid,
                                                                              )
                                                                              .eqOrNull(
                                                                                'product_id',
                                                                                gridViewProductRow.idShopify,
                                                                              ),
                                                                        );
                                                                      },
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.0),
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/archive-minus.png',
                                                                          width:
                                                                              24.0,
                                                                          height:
                                                                              24.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  } else {
                                                                    return InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        await FavouritesTable()
                                                                            .insert({
                                                                          'user_id':
                                                                              currentUserUid,
                                                                          'product_id':
                                                                              gridViewProductRow.idShopify,
                                                                          'type':
                                                                              gridViewProductRow.type,
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        FFIcons
                                                                            .karchiveMinus,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    );
                                                                  }
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 10.0,
                                                                8.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '9syuszma' /* OVERALL */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'PP Hatton',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .m500,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'e814b6no' /* SCORE */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'PP Hatton',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .m500,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        RatingBarIndicator(
                                                          itemBuilder: (context,
                                                                  index) =>
                                                              Icon(
                                                            FFIcons
                                                                .kcircConverted,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .m500,
                                                          ),
                                                          direction:
                                                              Axis.horizontal,
                                                          rating:
                                                              gridViewProductRow
                                                                  .overallScore!,
                                                          unratedColor:
                                                              const Color(0x69717171),
                                                          itemCount: 5,
                                                          itemSize: 12.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 10.0,
                                                    height: 15.0,
                                                    decoration: const BoxDecoration(),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        StorefrontAPIGroup
                                                            .getItemCall
                                                            .vendor(
                                                          containerGetItemResponse
                                                              .jsonBody,
                                                        ),
                                                        '- - ',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .n900,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        StorefrontAPIGroup
                                                            .getItemCall
                                                            .title(
                                                          containerGetItemResponse
                                                              .jsonBody,
                                                        ),
                                                        '- -',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .n800,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '£${StorefrontAPIGroup.getItemCall.price(
                                                        containerGetItemResponse
                                                            .jsonBody,
                                                      )}',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .m500,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 10.0,
                                                      decoration:
                                                          const BoxDecoration(),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    height: 1.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .n950,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Opacity(
                                              opacity: functions.checkIndex(
                                                          gridViewIndex) ==
                                                      true
                                                  ? 1.0
                                                  : 0.0,
                                              child: Container(
                                                width: 1.0,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .n950,
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
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              wrapWithModel(
                model: _model.navbarModel,
                updateCallback: () => safeSetState(() {}),
                child: const NavbarWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
