import '/flutter_flow/flutter_flow_util.dart';
import '/utils/botton_cancel/botton_cancel_widget.dart';
import 'delete_widget.dart' show DeleteWidget;
import 'package:flutter/material.dart';

class DeleteModel extends FlutterFlowModel<DeleteWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Botton_cancel component.
  late BottonCancelModel bottonCancelModel;

  @override
  void initState(BuildContext context) {
    bottonCancelModel = createModel(context, () => BottonCancelModel());
  }

  @override
  void dispose() {
    bottonCancelModel.dispose();
  }
}
