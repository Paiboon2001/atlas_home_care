import '/flutter_flow/flutter_flow_util.dart';
import '/planvisit_home/widget/detaile_done/detaile_done_widget.dart';
import '/planvisit_home/widget/detaile_visit/detaile_visit_widget.dart';
import '/index.dart';
import 'plan_for_visit_widget.dart' show PlanForVisitWidget;
import 'package:flutter/material.dart';

class PlanForVisitModel extends FlutterFlowModel<PlanForVisitWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  DateTime? datePicked1;
  // Model for detaile_visit component.
  late DetaileVisitModel detaileVisitModel1;
  // Model for detaile_visit component.
  late DetaileVisitModel detaileVisitModel2;
  // Model for detaile_visit component.
  late DetaileVisitModel detaileVisitModel3;
  // Model for detaile_Done component.
  late DetaileDoneModel detaileDoneModel1;
  // Model for detaile_Done component.
  late DetaileDoneModel detaileDoneModel2;
  // Model for detaile_Done component.
  late DetaileDoneModel detaileDoneModel3;
  // Model for detaile_Done component.
  late DetaileDoneModel detaileDoneModel4;
  // Model for detaile_Done component.
  late DetaileDoneModel detaileDoneModel5;
  // Model for detaile_Done component.
  late DetaileDoneModel detaileDoneModel6;
  DateTime? datePicked2;
  // Model for detaile_Done component.
  late DetaileDoneModel detaileDoneModel7;
  DateTime? datePicked3;
  // Model for detaile_Done component.
  late DetaileDoneModel detaileDoneModel8;
  // Model for detaile_Done component.
  late DetaileDoneModel detaileDoneModel9;
  // Model for detaile_Done component.
  late DetaileDoneModel detaileDoneModel10;
  // Model for detaile_Done component.
  late DetaileDoneModel detaileDoneModel11;
  // Model for detaile_Done component.
  late DetaileDoneModel detaileDoneModel12;
  // Model for detaile_Done component.
  late DetaileDoneModel detaileDoneModel13;
  DateTime? datePicked4;
  // Model for detaile_visit component.
  late DetaileVisitModel detaileVisitModel4;
  // Model for detaile_visit component.
  late DetaileVisitModel detaileVisitModel5;
  // Model for detaile_visit component.
  late DetaileVisitModel detaileVisitModel6;

  @override
  void initState(BuildContext context) {
    detaileVisitModel1 = createModel(context, () => DetaileVisitModel());
    detaileVisitModel2 = createModel(context, () => DetaileVisitModel());
    detaileVisitModel3 = createModel(context, () => DetaileVisitModel());
    detaileDoneModel1 = createModel(context, () => DetaileDoneModel());
    detaileDoneModel2 = createModel(context, () => DetaileDoneModel());
    detaileDoneModel3 = createModel(context, () => DetaileDoneModel());
    detaileDoneModel4 = createModel(context, () => DetaileDoneModel());
    detaileDoneModel5 = createModel(context, () => DetaileDoneModel());
    detaileDoneModel6 = createModel(context, () => DetaileDoneModel());
    detaileDoneModel7 = createModel(context, () => DetaileDoneModel());
    detaileDoneModel8 = createModel(context, () => DetaileDoneModel());
    detaileDoneModel9 = createModel(context, () => DetaileDoneModel());
    detaileDoneModel10 = createModel(context, () => DetaileDoneModel());
    detaileDoneModel11 = createModel(context, () => DetaileDoneModel());
    detaileDoneModel12 = createModel(context, () => DetaileDoneModel());
    detaileDoneModel13 = createModel(context, () => DetaileDoneModel());
    detaileVisitModel4 = createModel(context, () => DetaileVisitModel());
    detaileVisitModel5 = createModel(context, () => DetaileVisitModel());
    detaileVisitModel6 = createModel(context, () => DetaileVisitModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    detaileVisitModel1.dispose();
    detaileVisitModel2.dispose();
    detaileVisitModel3.dispose();
    detaileDoneModel1.dispose();
    detaileDoneModel2.dispose();
    detaileDoneModel3.dispose();
    detaileDoneModel4.dispose();
    detaileDoneModel5.dispose();
    detaileDoneModel6.dispose();
    detaileDoneModel7.dispose();
    detaileDoneModel8.dispose();
    detaileDoneModel9.dispose();
    detaileDoneModel10.dispose();
    detaileDoneModel11.dispose();
    detaileDoneModel12.dispose();
    detaileDoneModel13.dispose();
    detaileVisitModel4.dispose();
    detaileVisitModel5.dispose();
    detaileVisitModel6.dispose();
  }
}
