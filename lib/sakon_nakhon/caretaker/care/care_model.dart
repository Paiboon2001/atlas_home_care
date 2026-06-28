import '/assessmentform/highbloodpressure/widget/bloodpage/bloodpage_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/sakon_nakhon/caretaker/ggg/ggg_widget.dart';
import '/sakon_nakhon/caretaker/ppp/ppp_widget.dart';
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
import '/index.dart';
import 'care_widget.dart' show CareWidget;
import 'package:flutter/material.dart';

class CareModel extends FlutterFlowModel<CareWidget> {
  ///  Local state fields for this page.

  int? care = 1;

  ///  State fields for stateful widgets in this page.

  // Model for bloodpage component.
  late BloodpageModel bloodpageModel1;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Model for ppp component.
  late PppModel pppModel1;
  // Model for ppp component.
  late PppModel pppModel2;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for DropDown widget.
  String? dropDownValue7;
  FormFieldController<String>? dropDownValueController7;
  // Model for nineone component.
  late NineoneModel nineoneModel1;
  // Model for nineone component.
  late NineoneModel nineoneModel2;
  // Model for nineone component.
  late NineoneModel nineoneModel3;
  // Model for nineone component.
  late NineoneModel nineoneModel4;
  // Model for nineone component.
  late NineoneModel nineoneModel5;
  // Model for ninetwo component.
  late NinetwoModel ninetwoModel1;
  // Model for ninetwo component.
  late NinetwoModel ninetwoModel2;
  // Model for ninetwo component.
  late NinetwoModel ninetwoModel3;
  // Model for ninetwo component.
  late NinetwoModel ninetwoModel4;
  // Model for ninetwo component.
  late NinetwoModel ninetwoModel5;
  // Model for ninethree component.
  late NinethreeModel ninethreeModel1;
  // Model for ninethree component.
  late NinethreeModel ninethreeModel2;
  // Model for ninethree component.
  late NinethreeModel ninethreeModel3;
  // Model for ninethree component.
  late NinethreeModel ninethreeModel4;
  // Model for ninethree component.
  late NinethreeModel ninethreeModel5;
  // Model for ninefore component.
  late NineforeModel nineforeModel1;
  // Model for ninefore component.
  late NineforeModel nineforeModel2;
  // Model for ninefore component.
  late NineforeModel nineforeModel3;
  // Model for ninefore component.
  late NineforeModel nineforeModel4;
  // Model for ninefore component.
  late NineforeModel nineforeModel5;
  // Model for ninefive component.
  late NinefiveModel ninefiveModel1;
  // Model for ninefive component.
  late NinefiveModel ninefiveModel2;
  // Model for ninefive component.
  late NinefiveModel ninefiveModel3;
  // Model for ninefive component.
  late NinefiveModel ninefiveModel4;
  // Model for ninefive component.
  late NinefiveModel ninefiveModel5;
  // Model for ninesix component.
  late NinesixModel ninesixModel1;
  // Model for ninesix component.
  late NinesixModel ninesixModel2;
  // Model for ninesix component.
  late NinesixModel ninesixModel3;
  // Model for ninesix component.
  late NinesixModel ninesixModel4;
  // Model for ninesix component.
  late NinesixModel ninesixModel5;
  // Model for nineseven component.
  late NinesevenModel ninesevenModel1;
  // Model for nineseven component.
  late NinesevenModel ninesevenModel2;
  // Model for nineseven component.
  late NinesevenModel ninesevenModel3;
  // Model for nineseven component.
  late NinesevenModel ninesevenModel4;
  // Model for nineseven component.
  late NinesevenModel ninesevenModel5;
  // Model for nineeight component.
  late NineeightModel nineeightModel1;
  // Model for nineeight component.
  late NineeightModel nineeightModel2;
  // Model for nineeight component.
  late NineeightModel nineeightModel3;
  // Model for nineeight component.
  late NineeightModel nineeightModel4;
  // Model for nineeight component.
  late NineeightModel nineeightModel5;
  // Model for ninenine component.
  late NinenineModel ninenineModel1;
  // Model for ninenine component.
  late NinenineModel ninenineModel2;
  // Model for ninenine component.
  late NinenineModel ninenineModel3;
  // Model for ninenine component.
  late NinenineModel ninenineModel4;
  // Model for ninenine component.
  late NinenineModel ninenineModel5;
  // Model for ten component.
  late TenModel tenModel1;
  // Model for ten component.
  late TenModel tenModel2;
  // Model for ten component.
  late TenModel tenModel3;
  // Model for ten component.
  late TenModel tenModel4;
  // Model for ten component.
  late TenModel tenModel5;
  // Model for eleven component.
  late ElevenModel elevenModel1;
  // Model for eleven component.
  late ElevenModel elevenModel2;
  // Model for eleven component.
  late ElevenModel elevenModel3;
  // Model for eleven component.
  late ElevenModel elevenModel4;
  // Model for eleven component.
  late ElevenModel elevenModel5;
  // Model for ggg component.
  late GggModel gggModel1;
  // Model for ggg component.
  late GggModel gggModel2;
  // Model for ggg component.
  late GggModel gggModel3;
  // Model for ggg component.
  late GggModel gggModel4;

  @override
  void initState(BuildContext context) {
    bloodpageModel1 = createModel(context, () => BloodpageModel());
    bloodpageModel2 = createModel(context, () => BloodpageModel());
    pppModel1 = createModel(context, () => PppModel());
    pppModel2 = createModel(context, () => PppModel());
    nineoneModel1 = createModel(context, () => NineoneModel());
    nineoneModel2 = createModel(context, () => NineoneModel());
    nineoneModel3 = createModel(context, () => NineoneModel());
    nineoneModel4 = createModel(context, () => NineoneModel());
    nineoneModel5 = createModel(context, () => NineoneModel());
    ninetwoModel1 = createModel(context, () => NinetwoModel());
    ninetwoModel2 = createModel(context, () => NinetwoModel());
    ninetwoModel3 = createModel(context, () => NinetwoModel());
    ninetwoModel4 = createModel(context, () => NinetwoModel());
    ninetwoModel5 = createModel(context, () => NinetwoModel());
    ninethreeModel1 = createModel(context, () => NinethreeModel());
    ninethreeModel2 = createModel(context, () => NinethreeModel());
    ninethreeModel3 = createModel(context, () => NinethreeModel());
    ninethreeModel4 = createModel(context, () => NinethreeModel());
    ninethreeModel5 = createModel(context, () => NinethreeModel());
    nineforeModel1 = createModel(context, () => NineforeModel());
    nineforeModel2 = createModel(context, () => NineforeModel());
    nineforeModel3 = createModel(context, () => NineforeModel());
    nineforeModel4 = createModel(context, () => NineforeModel());
    nineforeModel5 = createModel(context, () => NineforeModel());
    ninefiveModel1 = createModel(context, () => NinefiveModel());
    ninefiveModel2 = createModel(context, () => NinefiveModel());
    ninefiveModel3 = createModel(context, () => NinefiveModel());
    ninefiveModel4 = createModel(context, () => NinefiveModel());
    ninefiveModel5 = createModel(context, () => NinefiveModel());
    ninesixModel1 = createModel(context, () => NinesixModel());
    ninesixModel2 = createModel(context, () => NinesixModel());
    ninesixModel3 = createModel(context, () => NinesixModel());
    ninesixModel4 = createModel(context, () => NinesixModel());
    ninesixModel5 = createModel(context, () => NinesixModel());
    ninesevenModel1 = createModel(context, () => NinesevenModel());
    ninesevenModel2 = createModel(context, () => NinesevenModel());
    ninesevenModel3 = createModel(context, () => NinesevenModel());
    ninesevenModel4 = createModel(context, () => NinesevenModel());
    ninesevenModel5 = createModel(context, () => NinesevenModel());
    nineeightModel1 = createModel(context, () => NineeightModel());
    nineeightModel2 = createModel(context, () => NineeightModel());
    nineeightModel3 = createModel(context, () => NineeightModel());
    nineeightModel4 = createModel(context, () => NineeightModel());
    nineeightModel5 = createModel(context, () => NineeightModel());
    ninenineModel1 = createModel(context, () => NinenineModel());
    ninenineModel2 = createModel(context, () => NinenineModel());
    ninenineModel3 = createModel(context, () => NinenineModel());
    ninenineModel4 = createModel(context, () => NinenineModel());
    ninenineModel5 = createModel(context, () => NinenineModel());
    tenModel1 = createModel(context, () => TenModel());
    tenModel2 = createModel(context, () => TenModel());
    tenModel3 = createModel(context, () => TenModel());
    tenModel4 = createModel(context, () => TenModel());
    tenModel5 = createModel(context, () => TenModel());
    elevenModel1 = createModel(context, () => ElevenModel());
    elevenModel2 = createModel(context, () => ElevenModel());
    elevenModel3 = createModel(context, () => ElevenModel());
    elevenModel4 = createModel(context, () => ElevenModel());
    elevenModel5 = createModel(context, () => ElevenModel());
    gggModel1 = createModel(context, () => GggModel());
    gggModel2 = createModel(context, () => GggModel());
    gggModel3 = createModel(context, () => GggModel());
    gggModel4 = createModel(context, () => GggModel());
  }

  @override
  void dispose() {
    bloodpageModel1.dispose();
    bloodpageModel2.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    pppModel1.dispose();
    pppModel2.dispose();
    nineoneModel1.dispose();
    nineoneModel2.dispose();
    nineoneModel3.dispose();
    nineoneModel4.dispose();
    nineoneModel5.dispose();
    ninetwoModel1.dispose();
    ninetwoModel2.dispose();
    ninetwoModel3.dispose();
    ninetwoModel4.dispose();
    ninetwoModel5.dispose();
    ninethreeModel1.dispose();
    ninethreeModel2.dispose();
    ninethreeModel3.dispose();
    ninethreeModel4.dispose();
    ninethreeModel5.dispose();
    nineforeModel1.dispose();
    nineforeModel2.dispose();
    nineforeModel3.dispose();
    nineforeModel4.dispose();
    nineforeModel5.dispose();
    ninefiveModel1.dispose();
    ninefiveModel2.dispose();
    ninefiveModel3.dispose();
    ninefiveModel4.dispose();
    ninefiveModel5.dispose();
    ninesixModel1.dispose();
    ninesixModel2.dispose();
    ninesixModel3.dispose();
    ninesixModel4.dispose();
    ninesixModel5.dispose();
    ninesevenModel1.dispose();
    ninesevenModel2.dispose();
    ninesevenModel3.dispose();
    ninesevenModel4.dispose();
    ninesevenModel5.dispose();
    nineeightModel1.dispose();
    nineeightModel2.dispose();
    nineeightModel3.dispose();
    nineeightModel4.dispose();
    nineeightModel5.dispose();
    ninenineModel1.dispose();
    ninenineModel2.dispose();
    ninenineModel3.dispose();
    ninenineModel4.dispose();
    ninenineModel5.dispose();
    tenModel1.dispose();
    tenModel2.dispose();
    tenModel3.dispose();
    tenModel4.dispose();
    tenModel5.dispose();
    elevenModel1.dispose();
    elevenModel2.dispose();
    elevenModel3.dispose();
    elevenModel4.dispose();
    elevenModel5.dispose();
    gggModel1.dispose();
    gggModel2.dispose();
    gggModel3.dispose();
    gggModel4.dispose();
  }
}
