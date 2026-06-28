import '/flutter_flow/flutter_flow_util.dart';
import '/utils/close/close_widget.dart';
import 'option2_widget.dart' show Option2Widget;
import 'package:flutter/material.dart';

class Option2Model extends FlutterFlowModel<Option2Widget> {
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
