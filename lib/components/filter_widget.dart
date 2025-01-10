import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'filter_model.dart';
export 'filter_model.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({
    super.key,
    required this.type,
  });

  final String? type;

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget>
    with TickerProviderStateMixin {
  late FilterModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    animationsMap.addAll({
      'choiceChipsOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 910.0.ms,
            hz: 4,
            offset: const Offset(4.0, 0.0),
            rotation: 0,
          ),
        ],
      ),
      'choiceChipsOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 910.0.ms,
            hz: 4,
            offset: const Offset(4.0, 0.0),
            rotation: 0,
          ),
        ],
      ),
      'choiceChipsOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 910.0.ms,
            hz: 4,
            offset: const Offset(4.0, 0.0),
            rotation: 0,
          ),
        ],
      ),
      'choiceChipsOnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 910.0.ms,
            hz: 4,
            offset: const Offset(4.0, 0.0),
            rotation: 0,
          ),
        ],
      ),
      'choiceChipsOnActionTriggerAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 910.0.ms,
            hz: 4,
            offset: const Offset(4.0, 0.0),
            rotation: 0,
          ),
        ],
      ),
      'choiceChipsOnActionTriggerAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 910.0.ms,
            hz: 4,
            offset: const Offset(4.0, 0.0),
            rotation: 0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 48.0,
              height: 5.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).n100,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            Container(
              width: 15.0,
              height: 10.0,
              decoration: const BoxDecoration(),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).m200,
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
                    height: 20.0,
                    decoration: const BoxDecoration(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'z14g3knd' /* FILTER BY */,
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
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/delete-1--remove-add-button-buttons-delete-cross-x-mathematics-multiply-math.png',
                              width: 14.0,
                              height: 14.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (widget.type != 'JEWELLERY')
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'xr0bmbe4' /* COLOUR: */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context).n900,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Builder(
                                builder: (context) {
                                  final brands = FFAppState()
                                      .Filter
                                      .color
                                      .toList()
                                      .take(20)
                                      .toList();

                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(brands.length,
                                        (brandsIndex) {
                                      final brandsItem = brands[brandsIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          brandsItem,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .n900,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(width: 6.0)),
                      ),
                    ),
                  if (widget.type != 'JEWELLERY')
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 10.0, 16.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final color =
                                FFAppState().Colors.toList().take(99).toList();

                            return Wrap(
                              spacing: 5.0,
                              runSpacing: 5.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.antiAlias,
                              children:
                                  List.generate(color.length, (colorIndex) {
                                final colorItem = color[colorIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (FFAppState().Filter.color.contains(
                                        FFAppState()
                                            .Colors
                                            .elementAtOrNull(colorIndex)
                                            ?.colorName)) {
                                      FFAppState().updateFilterStruct(
                                        (e) => e
                                          ..updateColor(
                                            (e) => e.remove(FFAppState()
                                                .Colors
                                                .elementAtOrNull(colorIndex)
                                                ?.colorName),
                                          ),
                                      );
                                      safeSetState(() {});
                                    } else {
                                      FFAppState().updateFilterStruct(
                                        (e) => e
                                          ..updateColor(
                                            (e) => e.add(FFAppState()
                                                .Colors
                                                .elementAtOrNull(colorIndex)!
                                                .colorName),
                                          ),
                                      );
                                      safeSetState(() {});
                                    }
                                  },
                                  child: Container(
                                    width: 24.0,
                                    height: 24.0,
                                    decoration: BoxDecoration(
                                      color: colorFromCssString(
                                        FFAppState()
                                            .Colors
                                            .elementAtOrNull(colorIndex)!
                                            .codeColor,
                                        defaultColor: Colors.black,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        if (FFAppState().Filter.color.contains(
                                            FFAppState()
                                                .Colors
                                                .elementAtOrNull(colorIndex)
                                                ?.colorName))
                                          Icon(
                                            Icons.check,
                                            color: functions.checkColorType(
                                                        colorItem.codeColor) ==
                                                    true
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            size: 16.0,
                                          ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            );
                          },
                        ),
                      ),
                    ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'l173d23l' /* SIZE & FIT: */,
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
                        Builder(
                          builder: (context) {
                            final size = FFAppState()
                                .Filter
                                .size
                                .toList()
                                .take(99)
                                .toList();

                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(size.length, (sizeIndex) {
                                final sizeItem = size[sizeIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    sizeItem,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color:
                                              FlutterFlowTheme.of(context).n900,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                );
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      if (widget.type != 'JEWELLERY') {
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 10.0, 16.0, 0.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: StorefrontAPIGroup.getMetaobjectsSizeCall
                                .call(),
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
                              final rowGetMetaobjectsSizeResponse =
                                  snapshot.data!;

                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: FlutterFlowChoiceChips(
                                      options: StorefrontAPIGroup
                                          .getMetaobjectsSizeCall
                                          .sizes(
                                            rowGetMetaobjectsSizeResponse
                                                .jsonBody,
                                          )!
                                          .take(10)
                                          .toList()
                                          .map((label) => ChipData(label))
                                          .toList(),
                                      onChanged: (val) async {
                                        safeSetState(() =>
                                            _model.sizeChoiceChipsValues = val);
                                        FFAppState().Filter = FilterStruct(
                                          brand: _model.sizeChoiceChipsValues,
                                        );
                                        safeSetState(() {});
                                      },
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).m500,
                                        textStyle: FlutterFlowTheme.of(context)
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
                                        iconColor:
                                            FlutterFlowTheme.of(context).m500,
                                        iconSize: 0.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).m500,
                                        borderWidth: 0.5,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: const Color(0x00000000),
                                        iconSize: 0.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).n950,
                                        borderWidth: 0.5,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      chipSpacing: 4.0,
                                      rowSpacing: 8.0,
                                      multiselect: true,
                                      initialized:
                                          _model.sizeChoiceChipsValues != null,
                                      alignment: WrapAlignment.start,
                                      controller: _model
                                              .sizeChoiceChipsValueController ??=
                                          FormFieldController<List<String>>(
                                        [],
                                      ),
                                      wrapped: true,
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'choiceChipsOnActionTriggerAnimation1']!,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      } else {
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 10.0, 16.0, 0.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: StorefrontAPIGroup
                                .getMetaobjectsSizeJewelleryCall
                                .call(),
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
                              final rowGetMetaobjectsSizeJewelleryResponse =
                                  snapshot.data!;

                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: FlutterFlowChoiceChips(
                                      options: StorefrontAPIGroup
                                          .getMetaobjectsSizeJewelleryCall
                                          .sizesRing(
                                            rowGetMetaobjectsSizeJewelleryResponse
                                                .jsonBody,
                                          )!
                                          .take(10)
                                          .toList()
                                          .map((label) => ChipData(label))
                                          .toList(),
                                      onChanged: (val) => safeSetState(() =>
                                          _model.choiceChipsValues1 = val),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).m500,
                                        textStyle: FlutterFlowTheme.of(context)
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
                                        iconColor:
                                            FlutterFlowTheme.of(context).m500,
                                        iconSize: 0.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).m500,
                                        borderWidth: 0.5,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: const Color(0x00000000),
                                        iconSize: 0.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).n950,
                                        borderWidth: 0.5,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      chipSpacing: 4.0,
                                      rowSpacing: 8.0,
                                      multiselect: true,
                                      initialized:
                                          _model.choiceChipsValues1 != null,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.choiceChipsValueController1 ??=
                                              FormFieldController<List<String>>(
                                        [],
                                      ),
                                      wrapped: true,
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'choiceChipsOnActionTriggerAnimation2']!,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      }
                    },
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'i1f42hl6' /* MATERIALS: */,
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
                      ],
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      if (widget.type != 'JEWELLERY') {
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 10.0, 16.0, 0.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: StorefrontAPIGroup
                                .getMetaobjectMaterialsCall
                                .call(),
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
                              final rowGetMetaobjectMaterialsResponse =
                                  snapshot.data!;

                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: FlutterFlowChoiceChips(
                                      options: StorefrontAPIGroup
                                          .getMetaobjectMaterialsCall
                                          .materials(
                                            rowGetMetaobjectMaterialsResponse
                                                .jsonBody,
                                          )!
                                          .take(50)
                                          .toList()
                                          .map((label) => ChipData(label))
                                          .toList(),
                                      onChanged: (val) => safeSetState(() =>
                                          _model.choiceChipsValues2 = val),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).m500,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .m500,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        iconColor:
                                            FlutterFlowTheme.of(context).m500,
                                        iconSize: 0.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).m500,
                                        borderWidth: 0.5,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        iconSize: 0.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).n950,
                                        borderWidth: 0.5,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      chipSpacing: 4.0,
                                      rowSpacing: 8.0,
                                      multiselect: true,
                                      initialized:
                                          _model.choiceChipsValues2 != null,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.choiceChipsValueController2 ??=
                                              FormFieldController<List<String>>(
                                        [],
                                      ),
                                      wrapped: true,
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'choiceChipsOnActionTriggerAnimation3']!,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      } else {
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 10.0, 16.0, 0.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: StorefrontAPIGroup
                                .getMetaobjectMaterialsJwCall
                                .call(),
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
                              final rowGetMetaobjectMaterialsJwResponse =
                                  snapshot.data!;

                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: FlutterFlowChoiceChips(
                                      options: StorefrontAPIGroup
                                          .getMetaobjectMaterialsJwCall
                                          .materials(
                                            rowGetMetaobjectMaterialsJwResponse
                                                .jsonBody,
                                          )!
                                          .take(50)
                                          .toList()
                                          .map((label) => ChipData(label))
                                          .toList(),
                                      onChanged: (val) => safeSetState(() =>
                                          _model.choiceChipsValues3 = val),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).m500,
                                        textStyle: FlutterFlowTheme.of(context)
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
                                        iconColor:
                                            FlutterFlowTheme.of(context).m500,
                                        iconSize: 0.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).m500,
                                        borderWidth: 0.5,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: const Color(0x00000000),
                                        iconSize: 0.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).n950,
                                        borderWidth: 0.5,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      chipSpacing: 4.0,
                                      rowSpacing: 8.0,
                                      multiselect: true,
                                      initialized:
                                          _model.choiceChipsValues3 != null,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.choiceChipsValueController3 ??=
                                              FormFieldController<List<String>>(
                                        [],
                                      ),
                                      wrapped: true,
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'choiceChipsOnActionTriggerAnimation4']!,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      }
                    },
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'vp265hra' /* BRAND: */,
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
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Builder(
                              builder: (context) {
                                final brands = FFAppState()
                                    .Filter
                                    .brand
                                    .toList()
                                    .take(10)
                                    .toList();

                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(brands.length,
                                      (brandsIndex) {
                                    final brandsItem = brands[brandsIndex];
                                    return Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        brandsItem,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n900,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      if (widget.type != 'JEWELLERY') {
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 10.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: FutureBuilder<List<BrandRow>>(
                                  future: BrandTable().queryRows(
                                    queryFn: (q) => q.eqOrNull(
                                      'offering',
                                      'Fashion',
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
                                    List<BrandRow> choiceChipsBrandRowList =
                                        snapshot.data!;

                                    return FlutterFlowChoiceChips(
                                      options: choiceChipsBrandRowList
                                          .map((e) => e.name)
                                          .withoutNulls
                                          .toList()
                                          .map((label) => ChipData(label))
                                          .toList(),
                                      onChanged: (val) async {
                                        safeSetState(() =>
                                            _model.choiceChipsValues4 = val);
                                        FFAppState().Filter = FilterStruct(
                                          brand: _model.choiceChipsValues4,
                                        );
                                        safeSetState(() {});
                                      },
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).m500,
                                        textStyle: FlutterFlowTheme.of(context)
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
                                        iconColor:
                                            FlutterFlowTheme.of(context).m500,
                                        iconSize: 0.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).m500,
                                        borderWidth: 0.5,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: const Color(0x00000000),
                                        iconSize: 0.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).n950,
                                        borderWidth: 0.5,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      chipSpacing: 4.0,
                                      rowSpacing: 8.0,
                                      multiselect: true,
                                      initialized:
                                          _model.choiceChipsValues4 != null,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.choiceChipsValueController4 ??=
                                              FormFieldController<List<String>>(
                                        [],
                                      ),
                                      wrapped: true,
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'choiceChipsOnActionTriggerAnimation5']!,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 10.0, 16.0, 0.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: StorefrontAPIGroup.getMetaobjectGemstoneCall
                                .call(),
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
                              final rowGetMetaobjectGemstoneResponse =
                                  snapshot.data!;

                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: FlutterFlowChoiceChips(
                                      options: StorefrontAPIGroup
                                          .getMetaobjectGemstoneCall
                                          .materials(
                                            rowGetMetaobjectGemstoneResponse
                                                .jsonBody,
                                          )!
                                          .take(50)
                                          .toList()
                                          .map((label) => ChipData(label))
                                          .toList(),
                                      onChanged: (val) => safeSetState(() =>
                                          _model.choiceChipsValues5 = val),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).m500,
                                        textStyle: FlutterFlowTheme.of(context)
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
                                        iconColor:
                                            FlutterFlowTheme.of(context).m500,
                                        iconSize: 0.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).m500,
                                        borderWidth: 0.5,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .n950,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: const Color(0x00000000),
                                        iconSize: 0.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context).n950,
                                        borderWidth: 0.5,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      chipSpacing: 4.0,
                                      rowSpacing: 8.0,
                                      multiselect: true,
                                      initialized:
                                          _model.choiceChipsValues5 != null,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.choiceChipsValueController5 ??=
                                              FormFieldController<List<String>>(
                                        [],
                                      ),
                                      wrapped: true,
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'choiceChipsOnActionTriggerAnimation6']!,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      }
                    },
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'aajivwmv' /* PRICE */,
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
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: 200.0,
                            child: TextFormField(
                              controller: _model.textController1,
                              focusNode: _model.textFieldFocusNode1,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: FFLocalizations.of(context).getText(
                                  'ckb18l6q' /* From */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).n950,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                suffixIcon: Icon(
                                  Icons.currency_pound,
                                  color: FlutterFlowTheme.of(context).n500,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              keyboardType: TextInputType.number,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.textController1Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: 200.0,
                            child: TextFormField(
                              controller: _model.textController2,
                              focusNode: _model.textFieldFocusNode2,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: FFLocalizations.of(context).getText(
                                  'e1pq2ct2' /* To */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'PP Hatton',
                                      color: FlutterFlowTheme.of(context).n950,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).n950,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                suffixIcon: Icon(
                                  Icons.currency_pound,
                                  color: FlutterFlowTheme.of(context).n500,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              keyboardType: TextInputType.number,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 12.0)),
                    ),
                  ),
                  Container(
                    width: 10.0,
                    height: 30.0,
                    decoration: const BoxDecoration(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
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
                              'm1nzb96d' /* SHOW RESULTS */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
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
                  Container(
                    width: 10.0,
                    height: 15.0,
                    decoration: const BoxDecoration(),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      FFAppState().Filter = FilterStruct();
                      safeSetState(() {});
                    },
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'y1h5iuc6' /* Clear All */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Montserrat',
                            color: FlutterFlowTheme.of(context).n700,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                  Container(
                    width: 10.0,
                    height: 20.0,
                    decoration: const BoxDecoration(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
