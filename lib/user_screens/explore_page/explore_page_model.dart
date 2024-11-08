import '/components/how_to_guide/how_to_guide_widget.dart';
import '/components/navbar/navbar_widget.dart';
import '/components/options/options_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'explore_page_widget.dart' show ExplorePageWidget;
import 'package:flutter/material.dart';

class ExplorePageModel extends FlutterFlowModel<ExplorePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // Model for Options component.
  late OptionsModel optionsModel;
  // Model for HowToGuide component.
  late HowToGuideModel howToGuideModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    optionsModel = createModel(context, () => OptionsModel());
    howToGuideModel = createModel(context, () => HowToGuideModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
    optionsModel.dispose();
    howToGuideModel.dispose();
  }
}
