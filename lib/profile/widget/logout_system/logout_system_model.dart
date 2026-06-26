import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/utils/botton_cancel/botton_cancel_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'logout_system_widget.dart' show LogoutSystemWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LogoutSystemModel extends FlutterFlowModel<LogoutSystemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Botton_cancel component.
  late BottonCancelModel bottonCancelModel;

  @override
  void initState(BuildContext context) {
    bottonCancelModel = createModel(context, () => BottonCancelModel());
  }

  @override
  void dispose() {
    bottonCancelModel.dispose();
  }
}
