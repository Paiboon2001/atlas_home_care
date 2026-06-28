import '/flutter_flow/flutter_flow_util.dart';
import '/homevisitlist/widget/total_parents/total_parents_widget.dart';
import '/map/widget/navigatebutton/navigatebutton_widget.dart';
import '/index.dart';
import 'run_way_widget.dart' show RunWayWidget;
import 'package:flutter/material.dart';

class RunWayModel extends FlutterFlowModel<RunWayWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navigatebutton component.
  late NavigatebuttonModel navigatebuttonModel;
  // Model for total_parents component.
  late TotalParentsModel totalParentsModel;

  @override
  void initState(BuildContext context) {
    navigatebuttonModel = createModel(context, () => NavigatebuttonModel());
    totalParentsModel = createModel(context, () => TotalParentsModel());
  }

  @override
  void dispose() {
    navigatebuttonModel.dispose();
    totalParentsModel.dispose();
  }
}
