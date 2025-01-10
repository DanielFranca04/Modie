import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_fav_model.dart';
export 'empty_fav_model.dart';

class EmptyFavWidget extends StatefulWidget {
  const EmptyFavWidget({super.key});

  @override
  State<EmptyFavWidget> createState() => _EmptyFavWidgetState();
}

class _EmptyFavWidgetState extends State<EmptyFavWidget> {
  late EmptyFavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyFavModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.0,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 100.0,
            height: 30.0,
            decoration: const BoxDecoration(),
          ),
          Text(
            FFLocalizations.of(context).getText(
              '26j29mkx' /* HEY THERE! YOUR FAVOURITES LIS... */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).n300,
                  fontSize: 10.0,
                  letterSpacing: 1.0,
                  lineHeight: 2.0,
                ),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'fi4w04g4' /* CURRENTLY EMPTY. READY TO GET ... */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).n300,
                  fontSize: 10.0,
                  letterSpacing: 1.0,
                  lineHeight: 2.0,
                ),
          ),
          Container(
            width: 100.0,
            height: 30.0,
            decoration: const BoxDecoration(),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  's6m88us1' /* START BY CLICKING THE  */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Montserrat',
                      color: FlutterFlowTheme.of(context).n300,
                      fontSize: 10.0,
                      letterSpacing: 1.0,
                    ),
              ),
              Icon(
                FFIcons.karchiveMinus,
                color: FlutterFlowTheme.of(context).n300,
                size: 12.0,
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'bm63rydi' /*  BUTTON */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Montserrat',
                      color: FlutterFlowTheme.of(context).n300,
                      fontSize: 10.0,
                      letterSpacing: 1.0,
                    ),
              ),
            ],
          ),
          Text(
            FFLocalizations.of(context).getText(
              'jtb8ec8k' /* IN OUR PRODUCT GUIDES AND SHOP... */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).n300,
                  fontSize: 10.0,
                  letterSpacing: 1.0,
                  lineHeight: 2.0,
                ),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'cptmf7ih' /* IT'S THE PERFECT WAY TO COLLEC... */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).n300,
                  fontSize: 10.0,
                  letterSpacing: 1.0,
                  lineHeight: 2.0,
                ),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'outpt9q5' /* THINGS THAT CATCH YOUR EYE. */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).n300,
                  fontSize: 10.0,
                  letterSpacing: 1.0,
                  lineHeight: 2.0,
                ),
          ),
          Container(
            width: 100.0,
            height: 30.0,
            decoration: const BoxDecoration(),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'smztth41' /* HAPPY BROWSING AND SHOPPING! */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).n300,
                  fontSize: 10.0,
                  letterSpacing: 1.0,
                ),
          ),
        ],
      ),
    );
  }
}
