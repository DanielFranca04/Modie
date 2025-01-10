import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'points_model.dart';
export 'points_model.dart';

class PointsWidget extends StatefulWidget {
  const PointsWidget({super.key});

  @override
  State<PointsWidget> createState() => _PointsWidgetState();
}

class _PointsWidgetState extends State<PointsWidget> {
  late PointsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PointsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
