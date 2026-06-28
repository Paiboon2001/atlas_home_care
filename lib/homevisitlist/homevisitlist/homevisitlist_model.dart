import '/flutter_flow/flutter_flow_util.dart';
import '/homevisitlist/widget/item_home/item_home_widget.dart';
import '/index.dart';
import 'homevisitlist_widget.dart' show HomevisitlistWidget;
import 'package:flutter/material.dart';

class HomevisitlistModel extends FlutterFlowModel<HomevisitlistWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for item_home component.
  late ItemHomeModel itemHomeModel1;
  // Model for item_home component.
  late ItemHomeModel itemHomeModel2;
  // Model for item_home component.
  late ItemHomeModel itemHomeModel3;
  // Model for item_home component.
  late ItemHomeModel itemHomeModel4;
  // Model for item_home component.
  late ItemHomeModel itemHomeModel5;
  // Model for item_home component.
  late ItemHomeModel itemHomeModel6;
  // Model for item_home component.
  late ItemHomeModel itemHomeModel7;

  @override
  void initState(BuildContext context) {
    itemHomeModel1 = createModel(context, () => ItemHomeModel());
    itemHomeModel2 = createModel(context, () => ItemHomeModel());
    itemHomeModel3 = createModel(context, () => ItemHomeModel());
    itemHomeModel4 = createModel(context, () => ItemHomeModel());
    itemHomeModel5 = createModel(context, () => ItemHomeModel());
    itemHomeModel6 = createModel(context, () => ItemHomeModel());
    itemHomeModel7 = createModel(context, () => ItemHomeModel());
  }

  @override
  void dispose() {
    itemHomeModel1.dispose();
    itemHomeModel2.dispose();
    itemHomeModel3.dispose();
    itemHomeModel4.dispose();
    itemHomeModel5.dispose();
    itemHomeModel6.dispose();
    itemHomeModel7.dispose();
  }
}
