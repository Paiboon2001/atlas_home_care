import '/assessmentform/thirtytree/widget/start_as_bottom/start_as_bottom_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sakon_nakhon/crisisvictims/widget/ninefive/ninefive_widget.dart';
import '/index.dart';
import 'breathe_widget.dart' show BreatheWidget;
import 'package:flutter/material.dart';

class BreatheModel extends FlutterFlowModel<BreatheWidget> {
  ///  Local state fields for this page.

  int? nineq = 1;

  ///  State fields for stateful widgets in this page.

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
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel;

  @override
  void initState(BuildContext context) {
    ninefiveModel1 = createModel(context, () => NinefiveModel());
    ninefiveModel2 = createModel(context, () => NinefiveModel());
    ninefiveModel3 = createModel(context, () => NinefiveModel());
    ninefiveModel4 = createModel(context, () => NinefiveModel());
    ninefiveModel5 = createModel(context, () => NinefiveModel());
    startAsBottomModel = createModel(context, () => StartAsBottomModel());
  }

  @override
  void dispose() {
    ninefiveModel1.dispose();
    ninefiveModel2.dispose();
    ninefiveModel3.dispose();
    ninefiveModel4.dispose();
    ninefiveModel5.dispose();
    startAsBottomModel.dispose();
  }
}
