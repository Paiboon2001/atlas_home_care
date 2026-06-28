import '/flutter_flow/flutter_flow_util.dart';
import '/utils/close/close_widget.dart';
import 'health_sumary_a_i_widget.dart' show HealthSumaryAIWidget;
import 'package:flutter/material.dart';

class HealthSumaryAIModel extends FlutterFlowModel<HealthSumaryAIWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for close component.
  late CloseModel closeModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    closeModel = createModel(context, () => CloseModel());
  }

  @override
  void dispose() {
    closeModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
