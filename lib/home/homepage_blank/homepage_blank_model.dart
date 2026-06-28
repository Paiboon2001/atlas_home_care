import '/flutter_flow/flutter_flow_util.dart';
import '/map/widget/navigatebutton/navigatebutton_widget.dart';
import '/utils/navbar/navbar_widget.dart';
import '/index.dart';
import 'homepage_blank_widget.dart' show HomepageBlankWidget;
import 'package:flutter/material.dart';

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
