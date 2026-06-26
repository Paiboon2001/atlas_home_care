import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/utils/botton_cancel/botton_cancel_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'reson_cancel_widget.dart' show ResonCancelWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
