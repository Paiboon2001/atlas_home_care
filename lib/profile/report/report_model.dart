import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/profile/widget/process_up_pic/process_up_pic_widget.dart';
import 'dart:ui';
import 'report_widget.dart' show ReportWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReportModel extends FlutterFlowModel<ReportWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for process_up_pic component.
  late ProcessUpPicModel processUpPicModel;

  @override
  void initState(BuildContext context) {
    processUpPicModel = createModel(context, () => ProcessUpPicModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    processUpPicModel.dispose();
  }
}
