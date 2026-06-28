import '/flutter_flow/flutter_flow_util.dart';
import 'cgm_result_widget.dart' show CgmResultWidget;
import 'package:flutter/material.dart';

class CgmResultModel extends FlutterFlowModel<CgmResultWidget> {
  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
