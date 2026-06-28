import '/flutter_flow/flutter_flow_util.dart';
import '/utils/botton_cancel/botton_cancel_widget.dart';
import 'reson_cancel_widget.dart' show ResonCancelWidget;
import 'package:flutter/material.dart';

class ResonCancelModel extends FlutterFlowModel<ResonCancelWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Botton_cancel component.
  late BottonCancelModel bottonCancelModel;

  @override
  void initState(BuildContext context) {
    bottonCancelModel = createModel(context, () => BottonCancelModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    bottonCancelModel.dispose();
  }
}
