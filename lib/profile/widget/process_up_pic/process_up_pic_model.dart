import '/flutter_flow/flutter_flow_util.dart';
import '/poeple_community/widget/pic/pic_widget.dart';
import 'process_up_pic_widget.dart' show ProcessUpPicWidget;
import 'package:flutter/material.dart';

class ProcessUpPicModel extends FlutterFlowModel<ProcessUpPicWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for pic component.
  late PicModel picModel1;
  // Model for pic component.
  late PicModel picModel2;
  // Model for pic component.
  late PicModel picModel3;
  // Model for pic component.
  late PicModel picModel4;
  // Model for pic component.
  late PicModel picModel5;

  @override
  void initState(BuildContext context) {
    picModel1 = createModel(context, () => PicModel());
    picModel2 = createModel(context, () => PicModel());
    picModel3 = createModel(context, () => PicModel());
    picModel4 = createModel(context, () => PicModel());
    picModel5 = createModel(context, () => PicModel());
  }

  @override
  void dispose() {
    picModel1.dispose();
    picModel2.dispose();
    picModel3.dispose();
    picModel4.dispose();
    picModel5.dispose();
  }
}
