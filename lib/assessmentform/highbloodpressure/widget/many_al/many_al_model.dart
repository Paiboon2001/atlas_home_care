import '/flutter_flow/flutter_flow_util.dart';
import 'many_al_widget.dart' show ManyAlWidget;
import 'package:flutter/material.dart';

class ManyAlModel extends FlutterFlowModel<ManyAlWidget> {
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
