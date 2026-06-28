import '/flutter_flow/flutter_flow_util.dart';
import '/home/widget/respon_job/respon_job_widget.dart';
import '/index.dart';
import 'hold_job_widget.dart' show HoldJobWidget;
import 'package:flutter/material.dart';

class HoldJobModel extends FlutterFlowModel<HoldJobWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for respon_job component.
  late ResponJobModel responJobModel1;
  // Model for respon_job component.
  late ResponJobModel responJobModel2;
  // Model for respon_job component.
  late ResponJobModel responJobModel3;
  // Model for respon_job component.
  late ResponJobModel responJobModel4;

  @override
  void initState(BuildContext context) {
    responJobModel1 = createModel(context, () => ResponJobModel());
    responJobModel2 = createModel(context, () => ResponJobModel());
    responJobModel3 = createModel(context, () => ResponJobModel());
    responJobModel4 = createModel(context, () => ResponJobModel());
  }

  @override
  void dispose() {
    responJobModel1.dispose();
    responJobModel2.dispose();
    responJobModel3.dispose();
    responJobModel4.dispose();
  }
}
