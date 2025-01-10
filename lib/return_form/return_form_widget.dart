import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'return_form_model.dart';
export 'return_form_model.dart';

class ReturnFormWidget extends StatefulWidget {
  const ReturnFormWidget({super.key});

  @override
  State<ReturnFormWidget> createState() => _ReturnFormWidgetState();
}

class _ReturnFormWidgetState extends State<ReturnFormWidget> {
  late ReturnFormModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReturnFormModel());

    _model.aboutFieldTextController ??= TextEditingController();
    _model.aboutFieldFocusNode ??= FocusNode();
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
              child: SingleChildScrollView(
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
                              'qc425o3z' /* REASON FOR RETURN */,
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
                      width: 100.0,
                      height: 10.0,
                      decoration: const BoxDecoration(),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'tnc5zlna' /* WHY DO YOU WANT TO RETURN THE ... */,
                                  ),
                                  textAlign: TextAlign.center,
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
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 48.0,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 1.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).n950,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: const CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: CircleBorder(),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).n950,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxValue1 ??=
                                          _model.value == 'Incorrect Size/Fit',
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.checkboxValue1 = newValue!);
                                        if (newValue!) {
                                          _model.value = 'Incorrect Size/Fit';
                                          safeSetState(() {});
                                          safeSetState(() {
                                            _model.checkboxValue2 =
                                                _model.value ==
                                                    'Lack of Versability';
                                            _model.checkboxValue3 =
                                                _model.value ==
                                                    'Functional Defects';
                                            _model.checkboxValue4 =
                                                _model.value ==
                                                    'Poor Value for Money';
                                            _model.checkboxValue5 =
                                                _model.value ==
                                                    'Defective or Damaged';
                                            _model.checkboxValue6 =
                                                _model.value == 'Changed Mind';
                                            _model.checkboxValue7 =
                                                _model.value ==
                                                    'Item Not as Described';
                                            _model.checkboxValue8 =
                                                _model.value == 'Wrong Item';
                                            _model.checkboxValue9 =
                                                _model.value == 'Late Delivery';
                                            _model.checkboxValue10 =
                                                _model.value == 'Other';
                                          });
                                        } else {
                                          _model.value = null;
                                          safeSetState(() {});
                                        }
                                      },
                                      side: BorderSide(
                                        width: 2,
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                      ),
                                      activeColor:
                                          FlutterFlowTheme.of(context).m500,
                                      checkColor:
                                          FlutterFlowTheme.of(context).m500,
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '3xhotlok' /* Incorrect Size/Fit */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color:
                                              FlutterFlowTheme.of(context).n950,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 1.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).n950,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 48.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: const BoxDecoration(),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: const CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: CircleBorder(),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).n950,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue2 ??=
                                        _model.value == 'Lack of Versability',
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue2 = newValue!);
                                      if (newValue!) {
                                        _model.value = 'Lack of Versability';
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.checkboxValue1 =
                                              _model.value ==
                                                  'Incorrect Size/Fit';
                                          _model.checkboxValue3 =
                                              _model.value ==
                                                  'Functional Defects';
                                          _model.checkboxValue4 =
                                              _model.value ==
                                                  'Poor Value for Money';
                                          _model.checkboxValue5 =
                                              _model.value ==
                                                  'Defective or Damaged';
                                          _model.checkboxValue6 =
                                              _model.value == 'Changed Mind';
                                          _model.checkboxValue7 =
                                              _model.value ==
                                                  'Item Not as Described';
                                          _model.checkboxValue8 =
                                              _model.value == 'Wrong Item';
                                          _model.checkboxValue9 =
                                              _model.value == 'Late Delivery';
                                          _model.checkboxValue10 =
                                              _model.value == 'Other';
                                        });
                                      } else {
                                        _model.value = null;
                                        safeSetState(() {});
                                      }
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context).n950,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).m500,
                                    checkColor:
                                        FlutterFlowTheme.of(context).m500,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'u7ujmij2' /* Lack of Versability */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 48.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: const BoxDecoration(),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: const CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: CircleBorder(),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).n950,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue3 ??=
                                        _model.value == 'Functional Defects',
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue3 = newValue!);
                                      if (newValue!) {
                                        _model.value = 'Functional Defects';
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.checkboxValue2 =
                                              _model.value ==
                                                  'Lack of Versability';
                                          _model.checkboxValue1 =
                                              _model.value ==
                                                  'Incorrect Size/Fit';
                                          _model.checkboxValue4 =
                                              _model.value ==
                                                  'Poor Value for Money';
                                          _model.checkboxValue5 =
                                              _model.value ==
                                                  'Defective or Damaged';
                                          _model.checkboxValue6 =
                                              _model.value == 'Changed Mind';
                                          _model.checkboxValue7 =
                                              _model.value ==
                                                  'Item Not as Described';
                                          _model.checkboxValue8 =
                                              _model.value == 'Wrong Item';
                                          _model.checkboxValue9 =
                                              _model.value == 'Late Delivery';
                                          _model.checkboxValue10 =
                                              _model.value == 'Other';
                                        });
                                      } else {
                                        _model.value = null;
                                        safeSetState(() {});
                                      }
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context).n950,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).m500,
                                    checkColor:
                                        FlutterFlowTheme.of(context).m500,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'tu0e91de' /* Functional Defects */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 48.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: const BoxDecoration(),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: const CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: CircleBorder(),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).n950,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue4 ??=
                                        _model.value == 'Poor Value for Money',
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue4 = newValue!);
                                      if (newValue!) {
                                        _model.value = 'Poor Value for Money';
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.checkboxValue2 =
                                              _model.value ==
                                                  'Lack of Versability';
                                          _model.checkboxValue1 =
                                              _model.value ==
                                                  'Incorrect Size/Fit';
                                          _model.checkboxValue5 =
                                              _model.value ==
                                                  'Defective or Damaged';
                                          _model.checkboxValue6 =
                                              _model.value == 'Changed Mind';
                                          _model.checkboxValue7 =
                                              _model.value ==
                                                  'Item Not as Described';
                                          _model.checkboxValue8 =
                                              _model.value == 'Wrong Item';
                                          _model.checkboxValue9 =
                                              _model.value == 'Late Delivery';
                                          _model.checkboxValue10 =
                                              _model.value == 'Other';
                                          _model.checkboxValue3 =
                                              _model.value ==
                                                  'Functional Defects';
                                        });
                                      } else {
                                        _model.value = null;
                                        safeSetState(() {});
                                      }
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context).n950,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).m500,
                                    checkColor:
                                        FlutterFlowTheme.of(context).m500,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'wdxt0ot4' /* Poor Value for Money */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 48.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: const BoxDecoration(),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: const CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: CircleBorder(),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).n950,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue5 ??=
                                        _model.value == 'Defective or Damaged',
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue5 = newValue!);
                                      if (newValue!) {
                                        _model.value = 'Defective or Damaged';
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.checkboxValue2 =
                                              _model.value ==
                                                  'Lack of Versability';
                                          _model.checkboxValue1 =
                                              _model.value ==
                                                  'Incorrect Size/Fit';
                                          _model.checkboxValue6 =
                                              _model.value == 'Changed Mind';
                                          _model.checkboxValue7 =
                                              _model.value ==
                                                  'Item Not as Described';
                                          _model.checkboxValue8 =
                                              _model.value == 'Wrong Item';
                                          _model.checkboxValue9 =
                                              _model.value == 'Late Delivery';
                                          _model.checkboxValue10 =
                                              _model.value == 'Other';
                                          _model.checkboxValue3 =
                                              _model.value ==
                                                  'Functional Defects';
                                          _model.checkboxValue4 =
                                              _model.value ==
                                                  'Poor Value for Money';
                                        });
                                      } else {
                                        _model.value = null;
                                        safeSetState(() {});
                                      }
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context).n950,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).m500,
                                    checkColor:
                                        FlutterFlowTheme.of(context).m500,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'ae94514h' /* Defective or Damaged */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 48.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: const BoxDecoration(),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: const CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: CircleBorder(),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).n950,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue6 ??=
                                        _model.value == 'Changed Mind',
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue6 = newValue!);
                                      if (newValue!) {
                                        _model.value = 'Changed Mind';
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.checkboxValue2 =
                                              _model.value ==
                                                  'Lack of Versability';
                                          _model.checkboxValue1 =
                                              _model.value ==
                                                  'Incorrect Size/Fit';
                                          _model.checkboxValue7 =
                                              _model.value ==
                                                  'Item Not as Described';
                                          _model.checkboxValue8 =
                                              _model.value == 'Wrong Item';
                                          _model.checkboxValue9 =
                                              _model.value == 'Late Delivery';
                                          _model.checkboxValue10 =
                                              _model.value == 'Other';
                                          _model.checkboxValue3 =
                                              _model.value ==
                                                  'Functional Defects';
                                          _model.checkboxValue4 =
                                              _model.value ==
                                                  'Poor Value for Money';
                                          _model.checkboxValue5 =
                                              _model.value ==
                                                  'Defective or Damaged';
                                        });
                                      } else {
                                        _model.value = null;
                                        safeSetState(() {});
                                      }
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context).n950,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).m500,
                                    checkColor:
                                        FlutterFlowTheme.of(context).m500,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '162yvubh' /* Changed Mind */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 48.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: const BoxDecoration(),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: const CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: CircleBorder(),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).n950,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue7 ??=
                                        _model.value == 'Item Not as Described',
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue7 = newValue!);
                                      if (newValue!) {
                                        _model.value = 'Item Not as Described';
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.checkboxValue2 =
                                              _model.value ==
                                                  'Lack of Versability';
                                          _model.checkboxValue1 =
                                              _model.value ==
                                                  'Incorrect Size/Fit';
                                          _model.checkboxValue8 =
                                              _model.value == 'Wrong Item';
                                          _model.checkboxValue9 =
                                              _model.value == 'Late Delivery';
                                          _model.checkboxValue10 =
                                              _model.value == 'Other';
                                          _model.checkboxValue3 =
                                              _model.value ==
                                                  'Functional Defects';
                                          _model.checkboxValue4 =
                                              _model.value ==
                                                  'Poor Value for Money';
                                          _model.checkboxValue5 =
                                              _model.value ==
                                                  'Defective or Damaged';
                                          _model.checkboxValue6 =
                                              _model.value == 'Changed Mind';
                                        });
                                      } else {
                                        _model.value = null;
                                        safeSetState(() {});
                                      }
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context).n950,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).m500,
                                    checkColor:
                                        FlutterFlowTheme.of(context).m500,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'cg0av0fe' /* Item Not as Described */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 48.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: const BoxDecoration(),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: const CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: CircleBorder(),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).n950,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue8 ??=
                                        _model.value == 'Wrong Item',
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue8 = newValue!);
                                      if (newValue!) {
                                        _model.value = 'Wrong Item';
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.checkboxValue2 =
                                              _model.value ==
                                                  'Lack of Versability';
                                          _model.checkboxValue1 =
                                              _model.value ==
                                                  'Incorrect Size/Fit';
                                          _model.checkboxValue9 =
                                              _model.value == 'Late Delivery';
                                          _model.checkboxValue10 =
                                              _model.value == 'Other';
                                          _model.checkboxValue3 =
                                              _model.value ==
                                                  'Functional Defects';
                                          _model.checkboxValue4 =
                                              _model.value ==
                                                  'Poor Value for Money';
                                          _model.checkboxValue5 =
                                              _model.value ==
                                                  'Defective or Damaged';
                                          _model.checkboxValue6 =
                                              _model.value == 'Changed Mind';
                                          _model.checkboxValue7 =
                                              _model.value ==
                                                  'Item Not as Described';
                                        });
                                      } else {
                                        _model.value = null;
                                        safeSetState(() {});
                                      }
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context).n950,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).m500,
                                    checkColor:
                                        FlutterFlowTheme.of(context).m500,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '066jb9df' /* Wrong Item */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 48.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: const BoxDecoration(),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: const CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: CircleBorder(),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).n950,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue9 ??=
                                        _model.value == 'Late Delivery',
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue9 = newValue!);
                                      if (newValue!) {
                                        _model.value = 'Late Delivery';
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.checkboxValue2 =
                                              _model.value ==
                                                  'Lack of Versability';
                                          _model.checkboxValue1 =
                                              _model.value ==
                                                  'Incorrect Size/Fit';
                                          _model.checkboxValue10 =
                                              _model.value == 'Other';
                                          _model.checkboxValue3 =
                                              _model.value ==
                                                  'Functional Defects';
                                          _model.checkboxValue4 =
                                              _model.value ==
                                                  'Poor Value for Money';
                                          _model.checkboxValue5 =
                                              _model.value ==
                                                  'Defective or Damaged';
                                          _model.checkboxValue6 =
                                              _model.value == 'Changed Mind';
                                          _model.checkboxValue7 =
                                              _model.value ==
                                                  'Item Not as Described';
                                          _model.checkboxValue8 =
                                              _model.value == 'Wrong Item';
                                        });
                                      } else {
                                        _model.value = null;
                                        safeSetState(() {});
                                      }
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context).n950,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).m500,
                                    checkColor:
                                        FlutterFlowTheme.of(context).m500,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'pmnvm8j9' /* Late Delivery */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 48.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: const BoxDecoration(),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: const CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: CircleBorder(),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).n950,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue10 ??=
                                        _model.value == 'Other',
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxValue10 = newValue!);
                                      if (newValue!) {
                                        _model.value = 'Other';
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.checkboxValue2 =
                                              _model.value ==
                                                  'Lack of Versability';
                                          _model.checkboxValue1 =
                                              _model.value ==
                                                  'Incorrect Size/Fit';
                                          _model.checkboxValue3 =
                                              _model.value ==
                                                  'Functional Defects';
                                          _model.checkboxValue4 =
                                              _model.value ==
                                                  'Poor Value for Money';
                                          _model.checkboxValue5 =
                                              _model.value ==
                                                  'Defective or Damaged';
                                          _model.checkboxValue6 =
                                              _model.value == 'Changed Mind';
                                          _model.checkboxValue7 =
                                              _model.value ==
                                                  'Item Not as Described';
                                          _model.checkboxValue8 =
                                              _model.value == 'Wrong Item';
                                          _model.checkboxValue9 =
                                              _model.value == 'Late Delivery';
                                        });
                                      } else {
                                        _model.value = null;
                                        safeSetState(() {});
                                      }
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color: FlutterFlowTheme.of(context).n950,
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).m500,
                                    checkColor:
                                        FlutterFlowTheme.of(context).m500,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'uuhrmev7' /* Other */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).n950,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).n950,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 15.0,
                      decoration: const BoxDecoration(),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.aboutFieldTextController,
                          focusNode: _model.aboutFieldFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.aboutFieldTextController',
                            const Duration(milliseconds: 10),
                            () => safeSetState(() {}),
                          ),
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: FFLocalizations.of(context).getText(
                              'm6ny6kuc' /* Write something... */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'PP Hatton',
                                  color: FlutterFlowTheme.of(context).n950,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                  lineHeight: 1.8,
                                ),
                            alignLabelWithHint: false,
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context).n800,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).n950,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).n950,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n950,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          maxLines: null,
                          maxLength: 250,
                          buildCounter: (context,
                                  {required currentLength,
                                  required isFocused,
                                  maxLength}) =>
                              null,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model.aboutFieldTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 108.0,
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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 25.0, 16.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 53.0,
                      decoration: BoxDecoration(
                        color: _model.value != null && _model.value != ''
                            ? FlutterFlowTheme.of(context).n950
                            : FlutterFlowTheme.of(context).n300,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'eduqrrsr' /* CONTINUE */,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
