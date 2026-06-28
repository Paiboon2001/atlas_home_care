import '/flutter_flow/flutter_flow_util.dart';
import '/profile/widget/process_up_pic/process_up_pic_widget.dart';
import 'report_widget.dart' show ReportWidget;
import 'package:flutter/material.dart';

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
