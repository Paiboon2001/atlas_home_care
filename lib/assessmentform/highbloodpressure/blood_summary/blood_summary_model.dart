import '/assessmentform/thirtytree/widget/start_as_bottom/start_as_bottom_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'blood_summary_widget.dart' show BloodSummaryWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BloodSummaryModel extends FlutterFlowModel<BloodSummaryWidget> {
  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel;

  @override
  void initState(BuildContext context) {
    startAsBottomModel = createModel(context, () => StartAsBottomModel());
  }

  @override
  void dispose() {
    startAsBottomModel.dispose();
  }
}
