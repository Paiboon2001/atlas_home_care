import '/flutter_flow/flutter_flow_util.dart';
import '/sakon_nakhon/crisisvictims/widget/tqone/tqone_widget.dart';
import '/sakon_nakhon/crisisvictims/widget/tqtwo/tqtwo_widget.dart';
import '/index.dart';
import 'two_q_widget.dart' show TwoQWidget;
import 'package:flutter/material.dart';

class TwoQModel extends FlutterFlowModel<TwoQWidget> {
  ///  Local state fields for this page.

  int? twoq = 1;

  ///  State fields for stateful widgets in this page.

  // Model for tqone component.
  late TqoneModel tqoneModel1;
  // Model for tqone component.
  late TqoneModel tqoneModel2;
  // Model for tqtwo component.
  late TqtwoModel tqtwoModel1;
  // Model for tqtwo component.
  late TqtwoModel tqtwoModel2;

  @override
  void initState(BuildContext context) {
    tqoneModel1 = createModel(context, () => TqoneModel());
    tqoneModel2 = createModel(context, () => TqoneModel());
    tqtwoModel1 = createModel(context, () => TqtwoModel());
    tqtwoModel2 = createModel(context, () => TqtwoModel());
  }

  @override
  void dispose() {
    tqoneModel1.dispose();
    tqoneModel2.dispose();
    tqtwoModel1.dispose();
    tqtwoModel2.dispose();
  }
}
