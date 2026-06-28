import '/flutter_flow/flutter_flow_util.dart';
import 'amount1_widget.dart' show Amount1Widget;
import 'package:flutter/material.dart';

class Amount1Model extends FlutterFlowModel<Amount1Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
