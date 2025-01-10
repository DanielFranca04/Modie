import '/backend/api_requests/api_calls.dart';
import '/components/empty_prod_guides_widget.dart';
import '/components/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'product_guide_model.dart';
export 'product_guide_model.dart';

class ProductGuideWidget extends StatefulWidget {
  const ProductGuideWidget({super.key});

  @override
  State<ProductGuideWidget> createState() => _ProductGuideWidgetState();
}

class _ProductGuideWidgetState extends State<ProductGuideWidget>
    with TickerProviderStateMixin {
  late ProductGuideModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductGuideModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              1.0, 0.0, 0.0, 0.0),
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
                            'i40grw8g' /* PRODUCT GUIDES */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                    height: 5.0,
                    decoration: const BoxDecoration(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: 10.0,
                            decoration: const BoxDecoration(),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'xyy79956' /* Lifestyle */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context).n950,
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowChoiceChips(
                              options: [
                                ChipData(FFLocalizations.of(context).getText(
                                  'jy7xy8ez' /* Luxury */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  'bayvaoww' /* Minimalist */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  'gt4rvqya' /* Wellness */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  'qo8zxf8c' /* Bohemian */,
                                )),
                                ChipData(FFLocalizations.of(context).getText(
                                  'wmjxbig1' /* Outdoorsy */,
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
                                    'yluhg7ep' /* Luxury */,
                                  )
                                ],
                              ),
                              wrapped: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 10.0,
                    decoration: const BoxDecoration(),
                  ),
                  Expanded(
                    child: FutureBuilder<ApiCallResponse>(
                      future: StorefrontAPIGroup.getBlogFilterCall.call(
                        type: _model.choiceChipsValue,
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
                        final listViewGetBlogFilterResponse = snapshot.data!;

                        return Builder(
                          builder: (context) {
                            final blogs = (StorefrontAPIGroup.getBlogFilterCall
                                        .ids(
                                          listViewGetBlogFilterResponse
                                              .jsonBody,
                                        )
                                        ?.toList() ??
                                    [])
                                .take(15)
                                .toList();
                            if (blogs.isEmpty) {
                              return const EmptyProdGuidesWidget();
                            }

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: blogs.length,
                              itemBuilder: (context, blogsIndex) {
                                final blogsItem = blogs[blogsIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'ExploreArticlesPage',
                                      queryParameters: {
                                        'title': serializeParam(
                                          StorefrontAPIGroup.getBlogFilterCall
                                              .names(
                                                listViewGetBlogFilterResponse
                                                    .jsonBody,
                                              )
                                              ?.elementAtOrNull(blogsIndex),
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 270.0,
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 268.0,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              alignment: const AlignmentDirectional(
                                                  0.0, -0.6),
                                              image: Image.network(
                                                (StorefrontAPIGroup
                                                    .getBlogFilterCall
                                                    .images(
                                                      listViewGetBlogFilterResponse
                                                          .jsonBody,
                                                    )!
                                                    .elementAtOrNull(
                                                        blogsIndex))!,
                                              ).image,
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation']!),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
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
                                                    '0${(blogsIndex + 1).toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .m500,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        StorefrontAPIGroup
                                                            .getBlogFilterCall
                                                            .names(
                                                              listViewGetBlogFilterResponse
                                                                  .jsonBody,
                                                            )
                                                            ?.elementAtOrNull(
                                                                blogsIndex),
                                                        '- - ',
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'PP Hatton',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .m500,
                                                            fontSize: 28.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.92, -0.06),
                                          child: Transform.rotate(
                                            angle: 180.0 * (math.pi / 180),
                                            child: FlutterFlowIconButton(
                                              borderRadius: 8.0,
                                              buttonSize: 40.0,
                                              fillColor: const Color(0x00A20A05),
                                              icon: Icon(
                                                FFIcons.kvectorConverted,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .m500,
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                context.pushNamed(
                                                  'ExploreArticlesPage',
                                                  queryParameters: {
                                                    'title': serializeParam(
                                                      StorefrontAPIGroup
                                                          .getBlogFilterCall
                                                          .names(
                                                            listViewGetBlogFilterResponse
                                                                .jsonBody,
                                                          )
                                                          ?.elementAtOrNull(
                                                              blogsIndex),
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
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
    );
  }
}
