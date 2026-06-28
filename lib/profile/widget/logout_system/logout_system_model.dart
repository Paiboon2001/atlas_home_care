import '/flutter_flow/flutter_flow_util.dart';
import '/utils/botton_cancel/botton_cancel_widget.dart';
import 'logout_system_widget.dart' show LogoutSystemWidget;
import 'package:flutter/material.dart';

class LogoutSystemModel extends FlutterFlowModel<LogoutSystemWidget> {
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
