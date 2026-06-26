import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/map/widget/pin_locate/pin_locate_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'item_homefamily_widget.dart' show ItemHomefamilyWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemHomefamilyModel extends FlutterFlowModel<ItemHomefamilyWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for pin_locate component.
  late PinLocateModel pinLocateModel;

  @override
  void initState(BuildContext context) {
    pinLocateModel = createModel(context, () => PinLocateModel());
  }

  @override
  void dispose() {
    pinLocateModel.dispose();
  }
}
