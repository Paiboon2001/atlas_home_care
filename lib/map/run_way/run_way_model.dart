import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/homevisitlist/widget/total_parents/total_parents_widget.dart';
import '/map/widget/navigatebutton/navigatebutton_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'run_way_widget.dart' show RunWayWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RunWayModel extends FlutterFlowModel<RunWayWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navigatebutton component.
  late NavigatebuttonModel navigatebuttonModel;
  // Model for total_parents component.
  late TotalParentsModel totalParentsModel;

  @override
  void initState(BuildContext context) {
    navigatebuttonModel = createModel(context, () => NavigatebuttonModel());
    totalParentsModel = createModel(context, () => TotalParentsModel());
  }

  @override
  void dispose() {
    navigatebuttonModel.dispose();
    totalParentsModel.dispose();
  }
}
