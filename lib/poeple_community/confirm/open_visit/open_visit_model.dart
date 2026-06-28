import '/flutter_flow/flutter_flow_util.dart';
import '/utils/close/close_widget.dart';
import 'open_visit_widget.dart' show OpenVisitWidget;
import 'package:flutter/material.dart';

class OpenVisitModel extends FlutterFlowModel<OpenVisitWidget> {
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
