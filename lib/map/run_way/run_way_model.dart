import '/flutter_flow/flutter_flow_util.dart';
import '/map/widget/navigatebutton/navigatebutton_widget.dart';
import 'run_way_widget.dart' show RunWayWidget;
import 'package:flutter/material.dart';

class RunWayModel extends FlutterFlowModel<RunWayWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navigatebutton component.
  late NavigatebuttonModel navigatebuttonModel;

  @override
  void initState(BuildContext context) {
    navigatebuttonModel = createModel(context, () => NavigatebuttonModel());
  }

  @override
  void dispose() {
    navigatebuttonModel.dispose();
  }
}
