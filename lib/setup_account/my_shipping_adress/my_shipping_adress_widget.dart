import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/address/address_widget.dart';
import '/components/empty_adress/empty_adress_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'my_shipping_adress_model.dart';
export 'my_shipping_adress_model.dart';

class MyShippingAdressWidget extends StatefulWidget {
  const MyShippingAdressWidget({super.key});

  @override
  State<MyShippingAdressWidget> createState() => _MyShippingAdressWidgetState();
}

class _MyShippingAdressWidgetState extends State<MyShippingAdressWidget> {
  late MyShippingAdressModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyShippingAdressModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() => _model.requestCompleter = null);
      await _model.waitForRequestCompleted(minWait: 1, maxWait: 1);
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
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).m200,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 100.0,
              height: 50.0,
              decoration: const BoxDecoration(),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: const Color(0x00A20A05),
                    icon: Icon(
                      Icons.chevron_left,
                      color: FlutterFlowTheme.of(context).n950,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      context.goNamed('MyModie');
                    },
                  ),
                  Container(
                    width: 100.0,
                    height: 40.0,
                    decoration: const BoxDecoration(),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      '87jgzoyh' /* MY SHIPPING ADDRESS */,
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
              height: 40.0,
              decoration: const BoxDecoration(),
            ),
            Expanded(
              child: FutureBuilder<List<AddressRow>>(
                future:
                    (_model.requestCompleter ??= Completer<List<AddressRow>>()
                          ..complete(AddressTable().queryRows(
                            queryFn: (q) => q
                                .eq(
                                  'profile_id',
                                  currentUserUid,
                                )
                                .order('address_id', ascending: true),
                          )))
                        .future,
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
                  List<AddressRow> listViewAddressRowList = snapshot.data!;

                  if (listViewAddressRowList.isEmpty) {
                    return const EmptyAdressWidget();
                  }

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewAddressRowList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewAddressRow =
                          listViewAddressRowList[listViewIndex];
                      return SizedBox(
                        height: 530.0,
                        child: wrapWithModel(
                          model: _model.addressModels.getModel(
                            listViewIndex.toString(),
                            listViewIndex,
                          ),
                          updateCallback: () => safeSetState(() {}),
                          updateOnChange: true,
                          child: AddressWidget(
                            key: Key(
                              'Keyfx0_${listViewIndex.toString()}',
                            ),
                            id: listViewAddressRow.addressId,
                            inindex: listViewIndex,
                            status: listViewAddressRow.status!,
                            firstname: listViewAddressRow.firstName!,
                            surname: listViewAddressRow.surname!,
                            phone: listViewAddressRow.phone!,
                            diallingcode: listViewAddressRow.dialingCode!,
                            location: listViewAddressRow.city!,
                            postcode: listViewAddressRow.postalCode!,
                            country: listViewAddressRow.country!,
                            address1: listViewAddressRow.address1!,
                            address2: listViewAddressRow.address2!,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).n950,
              ),
            ),
            Container(
              width: double.infinity,
              height: 100.0,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('AddAdress');
                      },
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
                                'vsh1nz8m' /* ADD ADDRESS */,
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
                  ),
                ],
              ),
            ),
            Container(
              width: 100.0,
              height: 20.0,
              decoration: const BoxDecoration(),
            ),
          ],
        ),
      ),
    );
  }
}
