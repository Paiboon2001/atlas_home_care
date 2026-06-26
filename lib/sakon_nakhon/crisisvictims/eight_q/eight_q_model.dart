import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sakon_nakhon/crisisvictims/widget/nineeight/nineeight_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/ninefive/ninefive_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/ninefore/ninefore_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/ninenine/ninenine_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/nineone/nineone_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/nineseven/nineseven_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/ninesix/ninesix_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/ninethree/ninethree_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/ninetwo/ninetwo_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'eight_q_widget.dart' show EightQWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EightQModel extends FlutterFlowModel<EightQWidget> {
  ///  Local state fields for this page.

  int? nineq = 1;

  ///  State fields for stateful widgets in this page.

  // State field(s) for other01 widget.
  bool? other01Value1;
  // State field(s) for other01 widget.
  bool? other01Value2;
  // Model for nineone component.
  late NineoneModel nineoneModel1;
  // Model for nineone component.
  late NineoneModel nineoneModel2;
  // Model for ninetwo component.
  late NinetwoModel ninetwoModel1;
  // Model for ninetwo component.
  late NinetwoModel ninetwoModel2;
  // Model for ninethree component.
  late NinethreeModel ninethreeModel1;
  // Model for ninethree component.
  late NinethreeModel ninethreeModel2;
  // Model for ninefore component.
  late NineforeModel nineforeModel1;
  // Model for ninefore component.
  late NineforeModel nineforeModel2;
  // Model for nineseven component.
  late NinesevenModel ninesevenModel1;
  // Model for nineseven component.
  late NinesevenModel ninesevenModel2;
  // Model for ninefive component.
  late NinefiveModel ninefiveModel1;
  // Model for ninefive component.
  late NinefiveModel ninefiveModel2;
  // Model for ninesix component.
  late NinesixModel ninesixModel1;
  // Model for ninesix component.
  late NinesixModel ninesixModel2;
  // Model for nineeight component.
  late NineeightModel nineeightModel1;
  // Model for nineeight component.
  late NineeightModel nineeightModel2;
  // Model for ninenine component.
  late NinenineModel ninenineModel1;
  // Model for ninenine component.
  late NinenineModel ninenineModel2;

  @override
  void initState(BuildContext context) {
    nineoneModel1 = createModel(context, () => NineoneModel());
    nineoneModel2 = createModel(context, () => NineoneModel());
    ninetwoModel1 = createModel(context, () => NinetwoModel());
    ninetwoModel2 = createModel(context, () => NinetwoModel());
    ninethreeModel1 = createModel(context, () => NinethreeModel());
    ninethreeModel2 = createModel(context, () => NinethreeModel());
    nineforeModel1 = createModel(context, () => NineforeModel());
    nineforeModel2 = createModel(context, () => NineforeModel());
    ninesevenModel1 = createModel(context, () => NinesevenModel());
    ninesevenModel2 = createModel(context, () => NinesevenModel());
    ninefiveModel1 = createModel(context, () => NinefiveModel());
    ninefiveModel2 = createModel(context, () => NinefiveModel());
    ninesixModel1 = createModel(context, () => NinesixModel());
    ninesixModel2 = createModel(context, () => NinesixModel());
    nineeightModel1 = createModel(context, () => NineeightModel());
    nineeightModel2 = createModel(context, () => NineeightModel());
    ninenineModel1 = createModel(context, () => NinenineModel());
    ninenineModel2 = createModel(context, () => NinenineModel());
  }

  @override
  void dispose() {
    nineoneModel1.dispose();
    nineoneModel2.dispose();
    ninetwoModel1.dispose();
    ninetwoModel2.dispose();
    ninethreeModel1.dispose();
    ninethreeModel2.dispose();
    nineforeModel1.dispose();
    nineforeModel2.dispose();
    ninesevenModel1.dispose();
    ninesevenModel2.dispose();
    ninefiveModel1.dispose();
    ninefiveModel2.dispose();
    ninesixModel1.dispose();
    ninesixModel2.dispose();
    nineeightModel1.dispose();
    nineeightModel2.dispose();
    ninenineModel1.dispose();
    ninenineModel2.dispose();
  }
}
