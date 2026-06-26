import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/homevisitlist/widget/home_care/home_care_widget.dart';
import '/homevisitlist/widget/search_village/search_village_widget.dart';
import '/utils/navbar/navbar_widget.dart';
import 'dart:ui';
import 'home_visit_widget.dart' show HomeVisitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeVisitModel extends FlutterFlowModel<HomeVisitWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for home_care component.
  late HomeCareModel homeCareModel1;
  // Model for home_care component.
  late HomeCareModel homeCareModel2;
  // Model for home_care component.
  late HomeCareModel homeCareModel3;
  // Model for home_care component.
  late HomeCareModel homeCareModel4;
  // Model for home_care component.
  late HomeCareModel homeCareModel5;
  // Model for home_care component.
  late HomeCareModel homeCareModel6;
  // Model for home_care component.
  late HomeCareModel homeCareModel7;
  // Model for home_care component.
  late HomeCareModel homeCareModel8;
  // Model for home_care component.
  late HomeCareModel homeCareModel9;
  // Model for home_care component.
  late HomeCareModel homeCareModel10;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    homeCareModel1 = createModel(context, () => HomeCareModel());
    homeCareModel2 = createModel(context, () => HomeCareModel());
    homeCareModel3 = createModel(context, () => HomeCareModel());
    homeCareModel4 = createModel(context, () => HomeCareModel());
    homeCareModel5 = createModel(context, () => HomeCareModel());
    homeCareModel6 = createModel(context, () => HomeCareModel());
    homeCareModel7 = createModel(context, () => HomeCareModel());
    homeCareModel8 = createModel(context, () => HomeCareModel());
    homeCareModel9 = createModel(context, () => HomeCareModel());
    homeCareModel10 = createModel(context, () => HomeCareModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    homeCareModel1.dispose();
    homeCareModel2.dispose();
    homeCareModel3.dispose();
    homeCareModel4.dispose();
    homeCareModel5.dispose();
    homeCareModel6.dispose();
    homeCareModel7.dispose();
    homeCareModel8.dispose();
    homeCareModel9.dispose();
    homeCareModel10.dispose();
    navbarModel.dispose();
  }
}
