import '/flutter_flow/flutter_flow_util.dart';
import '/utils/close/close_widget.dart';
import 'option1_widget.dart' show Option1Widget;
import 'package:flutter/material.dart';

class Option1Model extends FlutterFlowModel<Option1Widget> {
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
