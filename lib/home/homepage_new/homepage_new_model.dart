import '/flutter_flow/flutter_flow_util.dart';
import '/home/widget/late/late_widget.dart';
import '/home/widget/new_job/new_job_widget.dart';
import '/home/widget/respon_job/respon_job_widget.dart';
import '/home/widget/successfull/successfull_widget.dart';
import '/home/widget/tablecalenda/tablecalenda_widget.dart';
import '/map/widget/navigatebutton/navigatebutton_widget.dart';
import '/map/widget/pin/pin_widget.dart';
import '/utils/navbar/navbar_widget.dart';
import '/index.dart';
import 'homepage_new_widget.dart' show HomepageNewWidget;
import 'package:flutter/material.dart';

class HomepageNewModel extends FlutterFlowModel<HomepageNewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navigatebutton component.
  late NavigatebuttonModel navigatebuttonModel;
  // Model for pin component.
  late PinModel pinModel1;
  // Model for pin component.
  late PinModel pinModel2;
  // Model for pin component.
  late PinModel pinModel3;
  // Model for pin component.
  late PinModel pinModel4;
  // Model for pin component.
  late PinModel pinModel5;
  // Model for pin component.
  late PinModel pinModel6;
  // Model for pin component.
  late PinModel pinModel7;
  // Model for pin component.
  late PinModel pinModel8;
  // Model for New_Job component.
  late NewJobModel newJobModel1;
  // Model for New_Job component.
  late NewJobModel newJobModel2;
  // Model for New_Job component.
  late NewJobModel newJobModel3;
  // Model for new_job component.
  late NewJobModel newJobModel4;
  // Model for new_job component.
  late NewJobModel newJobModel5;
  // Model for new_job component.
  late NewJobModel newJobModel6;
  // Model for new_job component.
  late NewJobModel newJobModel7;
  // Model for respon_job component.
  late ResponJobModel responJobModel1;
  // Model for respon_job component.
  late ResponJobModel responJobModel2;
  // Model for respon_job component.
  late ResponJobModel responJobModel3;
  // Model for late component.
  late LateModel lateModel1;
  // Model for late component.
  late LateModel lateModel2;
  // Model for successfull component.
  late SuccessfullModel successfullModel1;
  // Model for successfull component.
  late SuccessfullModel successfullModel2;
  // Model for tablecalenda component.
  late TablecalendaModel tablecalendaModel;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navigatebuttonModel = createModel(context, () => NavigatebuttonModel());
    pinModel1 = createModel(context, () => PinModel());
    pinModel2 = createModel(context, () => PinModel());
    pinModel3 = createModel(context, () => PinModel());
    pinModel4 = createModel(context, () => PinModel());
    pinModel5 = createModel(context, () => PinModel());
    pinModel6 = createModel(context, () => PinModel());
    pinModel7 = createModel(context, () => PinModel());
    pinModel8 = createModel(context, () => PinModel());
    newJobModel1 = createModel(context, () => NewJobModel());
    newJobModel2 = createModel(context, () => NewJobModel());
    newJobModel3 = createModel(context, () => NewJobModel());
    newJobModel4 = createModel(context, () => NewJobModel());
    newJobModel5 = createModel(context, () => NewJobModel());
    newJobModel6 = createModel(context, () => NewJobModel());
    newJobModel7 = createModel(context, () => NewJobModel());
    responJobModel1 = createModel(context, () => ResponJobModel());
    responJobModel2 = createModel(context, () => ResponJobModel());
    responJobModel3 = createModel(context, () => ResponJobModel());
    lateModel1 = createModel(context, () => LateModel());
    lateModel2 = createModel(context, () => LateModel());
    successfullModel1 = createModel(context, () => SuccessfullModel());
    successfullModel2 = createModel(context, () => SuccessfullModel());
    tablecalendaModel = createModel(context, () => TablecalendaModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navigatebuttonModel.dispose();
    pinModel1.dispose();
    pinModel2.dispose();
    pinModel3.dispose();
    pinModel4.dispose();
    pinModel5.dispose();
    pinModel6.dispose();
    pinModel7.dispose();
    pinModel8.dispose();
    newJobModel1.dispose();
    newJobModel2.dispose();
    newJobModel3.dispose();
    newJobModel4.dispose();
    newJobModel5.dispose();
    newJobModel6.dispose();
    newJobModel7.dispose();
    responJobModel1.dispose();
    responJobModel2.dispose();
    responJobModel3.dispose();
    lateModel1.dispose();
    lateModel2.dispose();
    successfullModel1.dispose();
    successfullModel2.dispose();
    tablecalendaModel.dispose();
    navbarModel.dispose();
  }
}
