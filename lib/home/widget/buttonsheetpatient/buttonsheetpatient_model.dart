import '/flutter_flow/flutter_flow_util.dart';
import '/homevisitlist/widget/botton_way/botton_way_widget.dart';
import '/homevisitlist/widget/total_parents/total_parents_widget.dart';
import '/map/widget/item_homepatient/item_homepatient_widget.dart';
import 'buttonsheetpatient_widget.dart' show ButtonsheetpatientWidget;
import 'package:flutter/material.dart';

class ButtonsheetpatientModel
    extends FlutterFlowModel<ButtonsheetpatientWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for item_homepatient component.
  late ItemHomepatientModel itemHomepatientModel;
  // Model for total_parents component.
  late TotalParentsModel totalParentsModel;
  // Model for Botton_way component.
  late BottonWayModel bottonWayModel;

  @override
  void initState(BuildContext context) {
    itemHomepatientModel = createModel(context, () => ItemHomepatientModel());
    totalParentsModel = createModel(context, () => TotalParentsModel());
    bottonWayModel = createModel(context, () => BottonWayModel());
  }

  @override
  void dispose() {
    itemHomepatientModel.dispose();
    totalParentsModel.dispose();
    bottonWayModel.dispose();
  }
}
