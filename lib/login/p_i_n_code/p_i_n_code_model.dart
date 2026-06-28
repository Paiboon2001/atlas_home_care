import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'p_i_n_code_widget.dart' show PINCodeWidget;
import 'package:flutter/material.dart';

class PINCodeModel extends FlutterFlowModel<PINCodeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
