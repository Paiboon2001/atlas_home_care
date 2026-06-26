import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/poeple_community/confirm/confirm_success/confirm_success_widget.dart';
import '/poeple_community/confirm/out_c_i_d/out_c_i_d_widget.dart';
import '/utils/navbar/navbar_widget.dart';
import 'dart:ui';
import 'save_menu_widget.dart' show SaveMenuWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SaveMenuModel extends FlutterFlowModel<SaveMenuWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
