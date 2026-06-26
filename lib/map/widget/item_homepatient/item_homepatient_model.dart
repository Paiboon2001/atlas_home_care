import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/map/widget/pin/pin_widget.dart';
import 'dart:ui';
import 'item_homepatient_widget.dart' show ItemHomepatientWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemHomepatientModel extends FlutterFlowModel<ItemHomepatientWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for pin component.
  late PinModel pinModel;

  @override
  void initState(BuildContext context) {
    pinModel = createModel(context, () => PinModel());
  }

  @override
  void dispose() {
    pinModel.dispose();
  }
}
