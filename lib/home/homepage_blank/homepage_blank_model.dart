import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/map/widget/navigatebutton/navigatebutton_widget.dart';
import '/utils/navbar/navbar_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'homepage_blank_widget.dart' show HomepageBlankWidget;
import 'package:badges/badges.dart' as badges;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomepageBlankModel extends FlutterFlowModel<HomepageBlankWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navigatebutton component.
  late NavigatebuttonModel navigatebuttonModel;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navigatebuttonModel = createModel(context, () => NavigatebuttonModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navigatebuttonModel.dispose();
    navbarModel.dispose();
  }
}
