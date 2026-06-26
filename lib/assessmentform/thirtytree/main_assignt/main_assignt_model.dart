import '/assessmentform/thirtytree/widget/amount/amount_widget.dart';
import '/assessmentform/thirtytree/widget/amount_1/amount1_widget.dart';
import '/assessmentform/thirtytree/widget/cb_click/cb_click_widget.dart';
import '/assessmentform/thirtytree/widget/checkeight/checkeight_widget.dart';
import '/assessmentform/thirtytree/widget/checkfive/checkfive_widget.dart';
import '/assessmentform/thirtytree/widget/checkfore/checkfore_widget.dart';
import '/assessmentform/thirtytree/widget/checknine/checknine_widget.dart';
import '/assessmentform/thirtytree/widget/checkone/checkone_widget.dart';
import '/assessmentform/thirtytree/widget/checkseven/checkseven_widget.dart';
import '/assessmentform/thirtytree/widget/checksix/checksix_widget.dart';
import '/assessmentform/thirtytree/widget/checkthree/checkthree_widget.dart';
import '/assessmentform/thirtytree/widget/checktwo/checktwo_widget.dart';
import '/assessmentform/thirtytree/widget/choose_cancer/choose_cancer_widget.dart';
import '/assessmentform/thirtytree/widget/eatb/eatb_widget.dart';
import '/assessmentform/thirtytree/widget/healthone/healthone_widget.dart';
import '/assessmentform/thirtytree/widget/healthtwo/healthtwo_widget.dart';
import '/assessmentform/thirtytree/widget/per_five/per_five_widget.dart';
import '/assessmentform/thirtytree/widget/per_fore/per_fore_widget.dart';
import '/assessmentform/thirtytree/widget/per_one/per_one_widget.dart';
import '/assessmentform/thirtytree/widget/per_three/per_three_widget.dart';
import '/assessmentform/thirtytree/widget/per_two/per_two_widget.dart';
import '/assessmentform/thirtytree/widget/riskfive/riskfive_widget.dart';
import '/assessmentform/thirtytree/widget/riskfore/riskfore_widget.dart';
import '/assessmentform/thirtytree/widget/riskone/riskone_widget.dart';
import '/assessmentform/thirtytree/widget/riskthree/riskthree_widget.dart';
import '/assessmentform/thirtytree/widget/risktwo/risktwo_widget.dart';
import '/assessmentform/thirtytree/widget/start_as_bottom/start_as_bottom_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/poeple_community/confirm/warming_family/warming_family_widget.dart';
import '/poeple_community/widget/summary_servay/summary_servay_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'main_assignt_widget.dart' show MainAssigntWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainAssigntModel extends FlutterFlowModel<MainAssigntWidget> {
  ///  Local state fields for this page.

  int? pagefamily = 1;

  ///  State fields for stateful widgets in this page.

  // Model for cb_click component.
  late CbClickModel cbClickModel1;
  // Model for cb_click component.
  late CbClickModel cbClickModel2;
  // Model for cb_click component.
  late CbClickModel cbClickModel3;
  // Model for cb_click component.
  late CbClickModel cbClickModel4;
  // Model for cb_click component.
  late CbClickModel cbClickModel5;
  // Model for cb_click component.
  late CbClickModel cbClickModel6;
  // Model for cb_click component.
  late CbClickModel cbClickModel7;
  // Model for cb_click component.
  late CbClickModel cbClickModel8;
  // State field(s) for other01 widget.
  bool? other01Value1;
  // Model for cb_click component.
  late CbClickModel cbClickModel9;
  // Model for cb_click component.
  late CbClickModel cbClickModel10;
  // Model for cb_click component.
  late CbClickModel cbClickModel11;
  // Model for cb_click component.
  late CbClickModel cbClickModel12;
  // Model for cb_click component.
  late CbClickModel cbClickModel13;
  // Model for cb_click component.
  late CbClickModel cbClickModel14;
  // Model for cb_click component.
  late CbClickModel cbClickModel15;
  // Model for cb_click component.
  late CbClickModel cbClickModel16;
  // State field(s) for other01 widget.
  bool? other01Value2;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel1;
  // Model for eatb component.
  late EatbModel eatbModel1;
  // Model for eatb component.
  late EatbModel eatbModel2;
  // State field(s) for other01 widget.
  bool? other01Value3;
  // State field(s) for other01 widget.
  bool? other01Value4;
  // Model for per_one component.
  late PerOneModel perOneModel1;
  // Model for per_one component.
  late PerOneModel perOneModel2;
  // Model for per_one component.
  late PerOneModel perOneModel3;
  // Model for per_two component.
  late PerTwoModel perTwoModel1;
  // Model for per_two component.
  late PerTwoModel perTwoModel2;
  // Model for per_two component.
  late PerTwoModel perTwoModel3;
  // Model for per_three component.
  late PerThreeModel perThreeModel1;
  // Model for per_three component.
  late PerThreeModel perThreeModel2;
  // Model for per_three component.
  late PerThreeModel perThreeModel3;
  // Model for per_fore component.
  late PerForeModel perForeModel1;
  // Model for per_fore component.
  late PerForeModel perForeModel2;
  // Model for per_fore component.
  late PerForeModel perForeModel3;
  // Model for per_five component.
  late PerFiveModel perFiveModel1;
  // Model for per_five component.
  late PerFiveModel perFiveModel2;
  // Model for per_five component.
  late PerFiveModel perFiveModel3;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel2;
  // Model for healthone component.
  late HealthoneModel healthoneModel1;
  // Model for healthone component.
  late HealthoneModel healthoneModel2;
  // Model for healthone component.
  late HealthoneModel healthoneModel3;
  // Model for healthtwo component.
  late HealthtwoModel healthtwoModel1;
  // Model for healthtwo component.
  late HealthtwoModel healthtwoModel2;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel3;
  // State field(s) for other01 widget.
  bool? other01Value5;
  // State field(s) for other01 widget.
  bool? other01Value6;
  // Model for checkone component.
  late CheckoneModel checkoneModel1;
  // Model for checkone component.
  late CheckoneModel checkoneModel2;
  // Model for checktwo component.
  late ChecktwoModel checktwoModel1;
  // Model for checktwo component.
  late ChecktwoModel checktwoModel2;
  // Model for checkthree component.
  late CheckthreeModel checkthreeModel1;
  // Model for checkthree component.
  late CheckthreeModel checkthreeModel2;
  // Model for checkfore component.
  late CheckforeModel checkforeModel1;
  // Model for checkfore component.
  late CheckforeModel checkforeModel2;
  // Model for checkfive component.
  late CheckfiveModel checkfiveModel1;
  // Model for checkfive component.
  late CheckfiveModel checkfiveModel2;
  // Model for checksix component.
  late ChecksixModel checksixModel1;
  // Model for checksix component.
  late ChecksixModel checksixModel2;
  // Model for checkseven component.
  late ChecksevenModel checksevenModel1;
  // Model for checkseven component.
  late ChecksevenModel checksevenModel2;
  // Model for checkeight component.
  late CheckeightModel checkeightModel1;
  // Model for checkeight component.
  late CheckeightModel checkeightModel2;
  // Model for checknine component.
  late ChecknineModel checknineModel1;
  // Model for checknine component.
  late ChecknineModel checknineModel2;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel4;
  // State field(s) for other01 widget.
  bool? other01Value7;
  // State field(s) for other01 widget.
  bool? other01Value8;
  // Model for riskone component.
  late RiskoneModel riskoneModel1;
  // Model for riskone component.
  late RiskoneModel riskoneModel2;
  // Model for risktwo component.
  late RisktwoModel risktwoModel1;
  // Model for risktwo component.
  late RisktwoModel risktwoModel2;
  // Model for riskthree component.
  late RiskthreeModel riskthreeModel1;
  // Model for riskthree component.
  late RiskthreeModel riskthreeModel2;
  // Model for riskfore component.
  late RiskforeModel riskforeModel1;
  // Model for riskfore component.
  late RiskforeModel riskforeModel2;
  // Model for riskfive component.
  late RiskfiveModel riskfiveModel1;
  // Model for riskfive component.
  late RiskfiveModel riskfiveModel2;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel5;
  // Model for summary_servay component.
  late SummaryServayModel summaryServayModel;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel6;

  @override
  void initState(BuildContext context) {
    cbClickModel1 = createModel(context, () => CbClickModel());
    cbClickModel2 = createModel(context, () => CbClickModel());
    cbClickModel3 = createModel(context, () => CbClickModel());
    cbClickModel4 = createModel(context, () => CbClickModel());
    cbClickModel5 = createModel(context, () => CbClickModel());
    cbClickModel6 = createModel(context, () => CbClickModel());
    cbClickModel7 = createModel(context, () => CbClickModel());
    cbClickModel8 = createModel(context, () => CbClickModel());
    cbClickModel9 = createModel(context, () => CbClickModel());
    cbClickModel10 = createModel(context, () => CbClickModel());
    cbClickModel11 = createModel(context, () => CbClickModel());
    cbClickModel12 = createModel(context, () => CbClickModel());
    cbClickModel13 = createModel(context, () => CbClickModel());
    cbClickModel14 = createModel(context, () => CbClickModel());
    cbClickModel15 = createModel(context, () => CbClickModel());
    cbClickModel16 = createModel(context, () => CbClickModel());
    startAsBottomModel1 = createModel(context, () => StartAsBottomModel());
    eatbModel1 = createModel(context, () => EatbModel());
    eatbModel2 = createModel(context, () => EatbModel());
    perOneModel1 = createModel(context, () => PerOneModel());
    perOneModel2 = createModel(context, () => PerOneModel());
    perOneModel3 = createModel(context, () => PerOneModel());
    perTwoModel1 = createModel(context, () => PerTwoModel());
    perTwoModel2 = createModel(context, () => PerTwoModel());
    perTwoModel3 = createModel(context, () => PerTwoModel());
    perThreeModel1 = createModel(context, () => PerThreeModel());
    perThreeModel2 = createModel(context, () => PerThreeModel());
    perThreeModel3 = createModel(context, () => PerThreeModel());
    perForeModel1 = createModel(context, () => PerForeModel());
    perForeModel2 = createModel(context, () => PerForeModel());
    perForeModel3 = createModel(context, () => PerForeModel());
    perFiveModel1 = createModel(context, () => PerFiveModel());
    perFiveModel2 = createModel(context, () => PerFiveModel());
    perFiveModel3 = createModel(context, () => PerFiveModel());
    startAsBottomModel2 = createModel(context, () => StartAsBottomModel());
    healthoneModel1 = createModel(context, () => HealthoneModel());
    healthoneModel2 = createModel(context, () => HealthoneModel());
    healthoneModel3 = createModel(context, () => HealthoneModel());
    healthtwoModel1 = createModel(context, () => HealthtwoModel());
    healthtwoModel2 = createModel(context, () => HealthtwoModel());
    startAsBottomModel3 = createModel(context, () => StartAsBottomModel());
    checkoneModel1 = createModel(context, () => CheckoneModel());
    checkoneModel2 = createModel(context, () => CheckoneModel());
    checktwoModel1 = createModel(context, () => ChecktwoModel());
    checktwoModel2 = createModel(context, () => ChecktwoModel());
    checkthreeModel1 = createModel(context, () => CheckthreeModel());
    checkthreeModel2 = createModel(context, () => CheckthreeModel());
    checkforeModel1 = createModel(context, () => CheckforeModel());
    checkforeModel2 = createModel(context, () => CheckforeModel());
    checkfiveModel1 = createModel(context, () => CheckfiveModel());
    checkfiveModel2 = createModel(context, () => CheckfiveModel());
    checksixModel1 = createModel(context, () => ChecksixModel());
    checksixModel2 = createModel(context, () => ChecksixModel());
    checksevenModel1 = createModel(context, () => ChecksevenModel());
    checksevenModel2 = createModel(context, () => ChecksevenModel());
    checkeightModel1 = createModel(context, () => CheckeightModel());
    checkeightModel2 = createModel(context, () => CheckeightModel());
    checknineModel1 = createModel(context, () => ChecknineModel());
    checknineModel2 = createModel(context, () => ChecknineModel());
    startAsBottomModel4 = createModel(context, () => StartAsBottomModel());
    riskoneModel1 = createModel(context, () => RiskoneModel());
    riskoneModel2 = createModel(context, () => RiskoneModel());
    risktwoModel1 = createModel(context, () => RisktwoModel());
    risktwoModel2 = createModel(context, () => RisktwoModel());
    riskthreeModel1 = createModel(context, () => RiskthreeModel());
    riskthreeModel2 = createModel(context, () => RiskthreeModel());
    riskforeModel1 = createModel(context, () => RiskforeModel());
    riskforeModel2 = createModel(context, () => RiskforeModel());
    riskfiveModel1 = createModel(context, () => RiskfiveModel());
    riskfiveModel2 = createModel(context, () => RiskfiveModel());
    startAsBottomModel5 = createModel(context, () => StartAsBottomModel());
    summaryServayModel = createModel(context, () => SummaryServayModel());
    startAsBottomModel6 = createModel(context, () => StartAsBottomModel());
  }

  @override
  void dispose() {
    cbClickModel1.dispose();
    cbClickModel2.dispose();
    cbClickModel3.dispose();
    cbClickModel4.dispose();
    cbClickModel5.dispose();
    cbClickModel6.dispose();
    cbClickModel7.dispose();
    cbClickModel8.dispose();
    cbClickModel9.dispose();
    cbClickModel10.dispose();
    cbClickModel11.dispose();
    cbClickModel12.dispose();
    cbClickModel13.dispose();
    cbClickModel14.dispose();
    cbClickModel15.dispose();
    cbClickModel16.dispose();
    startAsBottomModel1.dispose();
    eatbModel1.dispose();
    eatbModel2.dispose();
    perOneModel1.dispose();
    perOneModel2.dispose();
    perOneModel3.dispose();
    perTwoModel1.dispose();
    perTwoModel2.dispose();
    perTwoModel3.dispose();
    perThreeModel1.dispose();
    perThreeModel2.dispose();
    perThreeModel3.dispose();
    perForeModel1.dispose();
    perForeModel2.dispose();
    perForeModel3.dispose();
    perFiveModel1.dispose();
    perFiveModel2.dispose();
    perFiveModel3.dispose();
    startAsBottomModel2.dispose();
    healthoneModel1.dispose();
    healthoneModel2.dispose();
    healthoneModel3.dispose();
    healthtwoModel1.dispose();
    healthtwoModel2.dispose();
    startAsBottomModel3.dispose();
    checkoneModel1.dispose();
    checkoneModel2.dispose();
    checktwoModel1.dispose();
    checktwoModel2.dispose();
    checkthreeModel1.dispose();
    checkthreeModel2.dispose();
    checkforeModel1.dispose();
    checkforeModel2.dispose();
    checkfiveModel1.dispose();
    checkfiveModel2.dispose();
    checksixModel1.dispose();
    checksixModel2.dispose();
    checksevenModel1.dispose();
    checksevenModel2.dispose();
    checkeightModel1.dispose();
    checkeightModel2.dispose();
    checknineModel1.dispose();
    checknineModel2.dispose();
    startAsBottomModel4.dispose();
    riskoneModel1.dispose();
    riskoneModel2.dispose();
    risktwoModel1.dispose();
    risktwoModel2.dispose();
    riskthreeModel1.dispose();
    riskthreeModel2.dispose();
    riskforeModel1.dispose();
    riskforeModel2.dispose();
    riskfiveModel1.dispose();
    riskfiveModel2.dispose();
    startAsBottomModel5.dispose();
    summaryServayModel.dispose();
    startAsBottomModel6.dispose();
  }
}
