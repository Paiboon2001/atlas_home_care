import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/homevisitlist/widget/item_house_hold_members/item_house_hold_members_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'total_parents_widget.dart' show TotalParentsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TotalParentsModel extends FlutterFlowModel<TotalParentsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for item_house_hold_members component.
  late ItemHouseHoldMembersModel itemHouseHoldMembersModel1;
  // Model for item_house_hold_members component.
  late ItemHouseHoldMembersModel itemHouseHoldMembersModel2;
  // Model for item_house_hold_members component.
  late ItemHouseHoldMembersModel itemHouseHoldMembersModel3;

  @override
  void initState(BuildContext context) {
    itemHouseHoldMembersModel1 =
        createModel(context, () => ItemHouseHoldMembersModel());
    itemHouseHoldMembersModel2 =
        createModel(context, () => ItemHouseHoldMembersModel());
    itemHouseHoldMembersModel3 =
        createModel(context, () => ItemHouseHoldMembersModel());
  }

  @override
  void dispose() {
    itemHouseHoldMembersModel1.dispose();
    itemHouseHoldMembersModel2.dispose();
    itemHouseHoldMembersModel3.dispose();
  }
}
