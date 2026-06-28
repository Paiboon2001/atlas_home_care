import '/flutter_flow/flutter_flow_util.dart';
import 'fami_widget.dart' show FamiWidget;
import 'package:flutter/material.dart';

class FamiModel extends FlutterFlowModel<FamiWidget> {
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
