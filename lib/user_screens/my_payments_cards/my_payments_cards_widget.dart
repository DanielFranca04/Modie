import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/empty_card/empty_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'my_payments_cards_model.dart';
export 'my_payments_cards_model.dart';

class MyPaymentsCardsWidget extends StatefulWidget {
  const MyPaymentsCardsWidget({super.key});

  @override
  State<MyPaymentsCardsWidget> createState() => _MyPaymentsCardsWidgetState();
}

class _MyPaymentsCardsWidgetState extends State<MyPaymentsCardsWidget> {
  late MyPaymentsCardsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyPaymentsCardsModel());
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
          child: Column(
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
                        '1miu63s3' /* MY PAYMENT METHOD */,
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
                height: 10.0,
                decoration: const BoxDecoration(),
              ),
              Expanded(
                child: FutureBuilder<List<AddressRow>>(
                  future: AddressTable().queryRows(
                    queryFn: (q) => q
                        .eq(
                          'profile_id',
                          currentUserUid,
                        )
                        .order('address_id', ascending: true),
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
                    List<AddressRow> listViewAddressRowList = snapshot.data!;

                    if (listViewAddressRowList.isEmpty) {
                      return const EmptyCardWidget();
                    }

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewAddressRowList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewAddressRow =
                            listViewAddressRowList[listViewIndex];
                        return Container(
                            width: 100, height: 100, color: Colors.green);
                      },
                    );
                  },
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
      ),
    );
  }
}
