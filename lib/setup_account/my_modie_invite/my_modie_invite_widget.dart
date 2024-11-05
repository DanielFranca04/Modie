import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'my_modie_invite_model.dart';
export 'my_modie_invite_model.dart';

class MyModieInviteWidget extends StatefulWidget {
  const MyModieInviteWidget({super.key});

  @override
  State<MyModieInviteWidget> createState() => _MyModieInviteWidgetState();
}

class _MyModieInviteWidgetState extends State<MyModieInviteWidget> {
  late MyModieInviteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyModieInviteModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<InvitationRow>>(
      future: InvitationTable().querySingleRow(
        queryFn: (q) => q.eq(
          'profile_id',
          currentUserUid,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).m200,
            body: const Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFA20A05),
                  ),
                ),
              ),
            ),
          );
        }
        List<InvitationRow> myModieInviteInvitationRowList = snapshot.data!;

        final myModieInviteInvitationRow =
            myModieInviteInvitationRowList.isNotEmpty
                ? myModieInviteInvitationRowList.first
                : null;

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
                        fillColor: const Color(0x00A20A05),
                        icon: Icon(
                          Icons.chevron_left,
                          color: FlutterFlowTheme.of(context).n950,
                          size: 20.0,
                        ),
                        onPressed: () async {
                          context.safePop();
                        },
                      ),
                      Container(
                        width: 100.0,
                        height: 40.0,
                        decoration: const BoxDecoration(),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'd8w34m48' /* INVITE */,
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
                  height: 20.0,
                  decoration: const BoxDecoration(),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 146.0,
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'ntpy7i9c' /* INVITE FRIENDS TO JOIN MODIE */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'PP Hatton',
                                  color: FlutterFlowTheme.of(context).m500,
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '08hfndi0' /* WE'RE HERE TO SUPPORT YOUR JOU... */,
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 20.0,
                  decoration: const BoxDecoration(),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 54.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FutureBuilder<List<ProfileRow>>(
                          future: ProfileTable().querySingleRow(
                            queryFn: (q) => q.eq(
                              'profile_id',
                              currentUserUid,
                            ),
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
                            List<ProfileRow> textProfileRowList =
                                snapshot.data!;

                            final textProfileRow = textProfileRowList.isNotEmpty
                                ? textProfileRowList.first
                                : null;

                            return Text(
                              'You have ${valueOrDefault<String>(
                                textProfileRow?.invitationCodeCount?.toString(),
                                '- - ',
                              )} invites avaible',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n600,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            );
                          },
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'koqa88yv' /* Each invite code can be used o... */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n600,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'pd8n29vr' /* To generate a new code, please... */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n600,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ].divide(const SizedBox(height: 4.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 248.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            myModieInviteInvitationRow?.code,
                            '- - ',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'PP Hatton',
                                    color: FlutterFlowTheme.of(context).n950,
                                    fontSize: 32.0,
                                    letterSpacing: 8.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 54.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            '9i7l787t' /* What happens next? */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n600,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'btin1xao' /* Both you and your friend will ... */,
                            ),
                            textAlign: TextAlign.center,
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
                      ].divide(const SizedBox(height: 4.0)),
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 30.0,
                  decoration: const BoxDecoration(),
                ),
                Builder(
                  builder: (context) => Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await Share.share(
                          myModieInviteInvitationRow!.code!,
                          sharePositionOrigin: getWidgetBoundingBox(context),
                        );
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
                                '5djpkijn' /* SHARE CODE */,
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
                ),
                Container(
                  width: 100.0,
                  height: 30.0,
                  decoration: const BoxDecoration(),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
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
                          await Clipboard.setData(ClipboardData(
                              text: myModieInviteInvitationRow!.code!));
                        },
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'sfdyvtq0' /* Copy Code */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).n700,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 50.0,
                  decoration: const BoxDecoration(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
