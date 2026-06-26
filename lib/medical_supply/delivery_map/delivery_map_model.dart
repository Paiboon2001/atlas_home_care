import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/map/widget/navigatebutton/navigatebutton_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'delivery_map_widget.dart' show DeliveryMapWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DeliveryMapModel extends FlutterFlowModel<DeliveryMapWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navigatebutton component.
  late NavigatebuttonModel navigatebuttonModel;

  @override
  void initState(BuildContext context) {
    navigatebuttonModel = createModel(context, () => NavigatebuttonModel());
  }

  @override
  void dispose() {
    navigatebuttonModel.dispose();
  }
}
