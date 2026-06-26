import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/homevisitlist/widget/botton_way/botton_way_widget.dart';
import '/homevisitlist/widget/item_homefamily/item_homefamily_widget.dart';
import '/homevisitlist/widget/total_parents/total_parents_widget.dart';
import '/utils/close/close_widget.dart';
import 'dart:ui';
import 'buttonsheetfamily_widget.dart' show ButtonsheetfamilyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ButtonsheetfamilyModel extends FlutterFlowModel<ButtonsheetfamilyWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for close component.
  late CloseModel closeModel;
  // Model for item_homefamily component.
  late ItemHomefamilyModel itemHomefamilyModel;
  // Model for total_parents component.
  late TotalParentsModel totalParentsModel;
  // Model for Botton_way component.
  late BottonWayModel bottonWayModel;

  @override
  void initState(BuildContext context) {
    closeModel = createModel(context, () => CloseModel());
    itemHomefamilyModel = createModel(context, () => ItemHomefamilyModel());
    totalParentsModel = createModel(context, () => TotalParentsModel());
    bottonWayModel = createModel(context, () => BottonWayModel());
  }

  @override
  void dispose() {
    closeModel.dispose();
    itemHomefamilyModel.dispose();
    totalParentsModel.dispose();
    bottonWayModel.dispose();
  }
}
