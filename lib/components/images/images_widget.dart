import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'images_model.dart';
export 'images_model.dart';

class ImagesWidget extends StatefulWidget {
  const ImagesWidget({super.key});

  @override
  State<ImagesWidget> createState() => _ImagesWidgetState();
}

class _ImagesWidgetState extends State<ImagesWidget> {
  late ImagesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImagesModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58.33,
      height: 79.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).m500,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset(
                'assets/images/Frame_48096470.png',
                width: 56.0,
                height: 81.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
