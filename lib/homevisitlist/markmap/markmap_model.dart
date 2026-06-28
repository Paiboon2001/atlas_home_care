import '/flutter_flow/flutter_flow_util.dart';
import '/homevisitlist/widget/pines/pines_widget.dart';
import 'markmap_widget.dart' show MarkmapWidget;
import 'package:flutter/material.dart';

class MarkmapModel extends FlutterFlowModel<MarkmapWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for pines component.
  late PinesModel pinesModel;

  @override
  void initState(BuildContext context) {
    pinesModel = createModel(context, () => PinesModel());
  }

  @override
  void dispose() {
    pinesModel.dispose();
  }
}
