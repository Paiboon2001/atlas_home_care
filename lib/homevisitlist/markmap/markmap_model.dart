import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/homevisitlist/widget/pines/pines_widget.dart';
import 'dart:ui';
import 'markmap_widget.dart' show MarkmapWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MarkmapModel extends FlutterFlowModel<MarkmapWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for pines component.
  late PinesModel pinesModel;

  @override
  void initState(BuildContext context) {
    pinesModel = createModel(context, () => PinesModel());
  }

  @override
  void dispose() {
    pinesModel.dispose();
  }
}
