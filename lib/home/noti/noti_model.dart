import '/flutter_flow/flutter_flow_util.dart';
import '/home/widget/news/news_widget.dart';
import '/home/widget/visit_done/visit_done_widget.dart';
import '/index.dart';
import 'noti_widget.dart' show NotiWidget;
import 'package:flutter/material.dart';

class NotiModel extends FlutterFlowModel<NotiWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for visit_done component.
  late VisitDoneModel visitDoneModel1;
  // Model for visit_done component.
  late VisitDoneModel visitDoneModel2;
  // Model for News component.
  late NewsModel newsModel1;
  // Model for visit_done component.
  late VisitDoneModel visitDoneModel3;
  // Model for visit_done component.
  late VisitDoneModel visitDoneModel4;
  // Model for News component.
  late NewsModel newsModel2;

  @override
  void initState(BuildContext context) {
    visitDoneModel1 = createModel(context, () => VisitDoneModel());
    visitDoneModel2 = createModel(context, () => VisitDoneModel());
    newsModel1 = createModel(context, () => NewsModel());
    visitDoneModel3 = createModel(context, () => VisitDoneModel());
    visitDoneModel4 = createModel(context, () => VisitDoneModel());
    newsModel2 = createModel(context, () => NewsModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    visitDoneModel1.dispose();
    visitDoneModel2.dispose();
    newsModel1.dispose();
    visitDoneModel3.dispose();
    visitDoneModel4.dispose();
    newsModel2.dispose();
  }
}
