import '/flutter_flow/flutter_flow_util.dart';
import '/utils/close/close_widget.dart';
import 'warming_family_widget.dart' show WarmingFamilyWidget;
import 'package:flutter/material.dart';

class WarmingFamilyModel extends FlutterFlowModel<WarmingFamilyWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for close component.
  late CloseModel closeModel;

  @override
  void initState(BuildContext context) {
    closeModel = createModel(context, () => CloseModel());
  }

  @override
  void dispose() {
    closeModel.dispose();
  }
}
