import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/homevisitlist/widget/botton_way/botton_way_widget.dart';
import '/homevisitlist/widget/total_parents/total_parents_widget.dart';
import '/map/widget/navigatebutton/navigatebutton_widget.dart';
import '/map/widget/pin/pin_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'map_home_widget.dart' show MapHomeWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MapHomeModel extends FlutterFlowModel<MapHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for pin component.
  late PinModel pinModel;
  // Model for navigatebutton component.
  late NavigatebuttonModel navigatebuttonModel;
  // Model for total_parents component.
  late TotalParentsModel totalParentsModel;
  // Model for Botton_way component.
  late BottonWayModel bottonWayModel;

  @override
  void initState(BuildContext context) {
    pinModel = createModel(context, () => PinModel());
    navigatebuttonModel = createModel(context, () => NavigatebuttonModel());
    totalParentsModel = createModel(context, () => TotalParentsModel());
    bottonWayModel = createModel(context, () => BottonWayModel());
  }

  @override
  void dispose() {
    pinModel.dispose();
    navigatebuttonModel.dispose();
    totalParentsModel.dispose();
    bottonWayModel.dispose();
  }
}
