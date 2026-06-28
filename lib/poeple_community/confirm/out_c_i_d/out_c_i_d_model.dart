import '/flutter_flow/flutter_flow_util.dart';
import '/utils/close/close_widget.dart';
import 'out_c_i_d_widget.dart' show OutCIDWidget;
import 'package:flutter/material.dart';

class OutCIDModel extends FlutterFlowModel<OutCIDWidget> {
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
