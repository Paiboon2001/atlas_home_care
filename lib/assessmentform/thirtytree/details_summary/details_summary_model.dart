import '/flutter_flow/flutter_flow_util.dart';
import '/poeple_community/widget/summary_servay/summary_servay_widget.dart';
import 'details_summary_widget.dart' show DetailsSummaryWidget;
import 'package:flutter/material.dart';

class DetailsSummaryModel extends FlutterFlowModel<DetailsSummaryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for summary_servay component.
  late SummaryServayModel summaryServayModel;

  @override
  void initState(BuildContext context) {
    summaryServayModel = createModel(context, () => SummaryServayModel());
  }

  @override
  void dispose() {
    summaryServayModel.dispose();
  }
}
