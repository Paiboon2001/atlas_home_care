import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/widget/visit_done/visit_done_widget.dart';
import 'dart:ui';
import 'history_widget.dart' show HistoryWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HistoryModel extends FlutterFlowModel<HistoryWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  DateTime? datePicked1;
  // Model for visit_done component.
  late VisitDoneModel visitDoneModel1;
  // Model for visit_done component.
  late VisitDoneModel visitDoneModel2;
  // Model for visit_done component.
  late VisitDoneModel visitDoneModel3;
  // Model for visit_done component.
  late VisitDoneModel visitDoneModel4;
  // Model for visit_done component.
  late VisitDoneModel visitDoneModel5;
  DateTime? datePicked2;
  // Model for visit_done component.
  late VisitDoneModel visitDoneModel6;
  DateTime? datePicked3;
  // Model for visit_done component.
  late VisitDoneModel visitDoneModel7;
  // Model for visit_done component.
  late VisitDoneModel visitDoneModel8;

  @override
  void initState(BuildContext context) {
    visitDoneModel1 = createModel(context, () => VisitDoneModel());
    visitDoneModel2 = createModel(context, () => VisitDoneModel());
    visitDoneModel3 = createModel(context, () => VisitDoneModel());
    visitDoneModel4 = createModel(context, () => VisitDoneModel());
    visitDoneModel5 = createModel(context, () => VisitDoneModel());
    visitDoneModel6 = createModel(context, () => VisitDoneModel());
    visitDoneModel7 = createModel(context, () => VisitDoneModel());
    visitDoneModel8 = createModel(context, () => VisitDoneModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    visitDoneModel1.dispose();
    visitDoneModel2.dispose();
    visitDoneModel3.dispose();
    visitDoneModel4.dispose();
    visitDoneModel5.dispose();
    visitDoneModel6.dispose();
    visitDoneModel7.dispose();
    visitDoneModel8.dispose();
  }
}
