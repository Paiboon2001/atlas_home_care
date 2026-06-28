import '/assessmentform/highbloodpressure/widget/sum/sum_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'summary_pressure_widget.dart' show SummaryPressureWidget;
import 'package:flutter/material.dart';

class SummaryPressureModel extends FlutterFlowModel<SummaryPressureWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Sum component.
  late SumModel sumModel;

  @override
  void initState(BuildContext context) {
    sumModel = createModel(context, () => SumModel());
  }

  @override
  void dispose() {
    sumModel.dispose();
  }
}
