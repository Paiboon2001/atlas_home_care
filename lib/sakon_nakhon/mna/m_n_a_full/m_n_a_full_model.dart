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
import '/sakon_nakhon/mna/widget/eleven/eleven_widget.dart';
import '/sakon_nakhon/mna/widget/ten/ten_widget.dart';
import '/sakon_nakhon/mna/widget/twelve/twelve_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'm_n_a_full_widget.dart' show MNAFullWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MNAFullModel extends FlutterFlowModel<MNAFullWidget> {
  ///  Local state fields for this page.

  int? nineq = 1;

  ///  State fields for stateful widgets in this page.

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
  // Model for ninefore component.
  late NineforeModel nineforeModel3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // Model for ninefive component.
  late NinefiveModel ninefiveModel1;
  // Model for ninefive component.
  late NinefiveModel ninefiveModel2;
  // Model for ninefive component.
  late NinefiveModel ninefiveModel3;
  // Model for ninesix component.
  late NinesixModel ninesixModel1;
  // Model for ninesix component.
  late NinesixModel ninesixModel2;
  // Model for nineseven component.
  late NinesevenModel ninesevenModel1;
  // Model for nineseven component.
  late NinesevenModel ninesevenModel2;
  // Model for nineseven component.
  late NinesevenModel ninesevenModel3;
  // Model for nineeight component.
  late NineeightModel nineeightModel1;
  // Model for nineeight component.
  late NineeightModel nineeightModel2;
  // Model for nineeight component.
  late NineeightModel nineeightModel3;
  // Model for ninenine component.
  late NinenineModel ninenineModel1;
  // Model for ninenine component.
  late NinenineModel ninenineModel2;
  // Model for ninenine component.
  late NinenineModel ninenineModel3;
  // Model for ten component.
  late TenModel tenModel1;
  // Model for ten component.
  late TenModel tenModel2;
  // Model for ten component.
  late TenModel tenModel3;
  // Model for ten component.
  late TenModel tenModel4;
  // Model for eleven component.
  late ElevenModel elevenModel1;
  // Model for eleven component.
  late ElevenModel elevenModel2;
  // Model for eleven component.
  late ElevenModel elevenModel3;
  // Model for twelve component.
  late TwelveModel twelveModel1;
  // Model for twelve component.
  late TwelveModel twelveModel2;

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
    nineforeModel3 = createModel(context, () => NineforeModel());
    ninefiveModel1 = createModel(context, () => NinefiveModel());
    ninefiveModel2 = createModel(context, () => NinefiveModel());
    ninefiveModel3 = createModel(context, () => NinefiveModel());
    ninesixModel1 = createModel(context, () => NinesixModel());
    ninesixModel2 = createModel(context, () => NinesixModel());
    ninesevenModel1 = createModel(context, () => NinesevenModel());
    ninesevenModel2 = createModel(context, () => NinesevenModel());
    ninesevenModel3 = createModel(context, () => NinesevenModel());
    nineeightModel1 = createModel(context, () => NineeightModel());
    nineeightModel2 = createModel(context, () => NineeightModel());
    nineeightModel3 = createModel(context, () => NineeightModel());
    ninenineModel1 = createModel(context, () => NinenineModel());
    ninenineModel2 = createModel(context, () => NinenineModel());
    ninenineModel3 = createModel(context, () => NinenineModel());
    tenModel1 = createModel(context, () => TenModel());
    tenModel2 = createModel(context, () => TenModel());
    tenModel3 = createModel(context, () => TenModel());
    tenModel4 = createModel(context, () => TenModel());
    elevenModel1 = createModel(context, () => ElevenModel());
    elevenModel2 = createModel(context, () => ElevenModel());
    elevenModel3 = createModel(context, () => ElevenModel());
    twelveModel1 = createModel(context, () => TwelveModel());
    twelveModel2 = createModel(context, () => TwelveModel());
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
    nineforeModel3.dispose();
    ninefiveModel1.dispose();
    ninefiveModel2.dispose();
    ninefiveModel3.dispose();
    ninesixModel1.dispose();
    ninesixModel2.dispose();
    ninesevenModel1.dispose();
    ninesevenModel2.dispose();
    ninesevenModel3.dispose();
    nineeightModel1.dispose();
    nineeightModel2.dispose();
    nineeightModel3.dispose();
    ninenineModel1.dispose();
    ninenineModel2.dispose();
    ninenineModel3.dispose();
    tenModel1.dispose();
    tenModel2.dispose();
    tenModel3.dispose();
    tenModel4.dispose();
    elevenModel1.dispose();
    elevenModel2.dispose();
    elevenModel3.dispose();
    twelveModel1.dispose();
    twelveModel2.dispose();
  }
}
