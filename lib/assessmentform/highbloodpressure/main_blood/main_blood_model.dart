import '/assessmentform/highbloodpressure/widget/bloodpage/bloodpage_widget.dart';
import '/assessmentform/highbloodpressure/widget/drink/drink_widget.dart';
import '/assessmentform/highbloodpressure/widget/per_six/per_six_widget.dart';
import '/assessmentform/highbloodpressure/widget/smokes/smokes_widget.dart';
import '/assessmentform/highbloodpressure/widget/sum/sum_widget.dart';
import '/assessmentform/thirtytree/widget/cb_click/cb_click_widget.dart';
import '/assessmentform/thirtytree/widget/per_five/per_five_widget.dart';
import '/assessmentform/thirtytree/widget/per_fore/per_fore_widget.dart';
import '/assessmentform/thirtytree/widget/per_one/per_one_widget.dart';
import '/assessmentform/thirtytree/widget/per_three/per_three_widget.dart';
import '/assessmentform/thirtytree/widget/per_two/per_two_widget.dart';
import '/assessmentform/thirtytree/widget/start_as_bottom/start_as_bottom_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'main_blood_widget.dart' show MainBloodWidget;
import 'package:flutter/material.dart';

class MainBloodModel extends FlutterFlowModel<MainBloodWidget> {
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
  // State field(s) for other01 widget.
  bool? other01Value3;
  // State field(s) for other01 widget.
  bool? other01Value4;
  // State field(s) for other01 widget.
  bool? other01Value5;
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
  // Model for per_six component.
  late PerSixModel perSixModel1;
  // Model for per_six component.
  late PerSixModel perSixModel2;
  // Model for per_six component.
  late PerSixModel perSixModel3;
  // State field(s) for other01 widget.
  bool? other01Value6;
  // State field(s) for other01 widget.
  bool? other01Value7;
  // Model for per_one component.
  late PerOneModel perOneModel4;
  // Model for per_one component.
  late PerOneModel perOneModel5;
  // Model for per_two component.
  late PerTwoModel perTwoModel4;
  // Model for per_two component.
  late PerTwoModel perTwoModel5;
  // Model for per_three component.
  late PerThreeModel perThreeModel4;
  // Model for per_three component.
  late PerThreeModel perThreeModel5;
  // Model for per_fore component.
  late PerForeModel perForeModel4;
  // Model for per_fore component.
  late PerForeModel perForeModel5;
  // Model for per_five component.
  late PerFiveModel perFiveModel4;
  // Model for per_five component.
  late PerFiveModel perFiveModel5;
  // Model for per_one component.
  late PerOneModel perOneModel6;
  // Model for per_one component.
  late PerOneModel perOneModel7;
  // Model for per_two component.
  late PerTwoModel perTwoModel6;
  // Model for per_two component.
  late PerTwoModel perTwoModel7;
  // Model for per_three component.
  late PerThreeModel perThreeModel6;
  // Model for per_three component.
  late PerThreeModel perThreeModel7;
  // Model for per_fore component.
  late PerForeModel perForeModel6;
  // Model for per_fore component.
  late PerForeModel perForeModel7;
  // Model for per_five component.
  late PerFiveModel perFiveModel6;
  // Model for per_five component.
  late PerFiveModel perFiveModel7;
  // Model for per_two component.
  late PerTwoModel perTwoModel8;
  // Model for per_two component.
  late PerTwoModel perTwoModel9;
  // Model for per_three component.
  late PerThreeModel perThreeModel8;
  // Model for per_three component.
  late PerThreeModel perThreeModel9;
  // Model for per_one component.
  late PerOneModel perOneModel8;
  // Model for per_one component.
  late PerOneModel perOneModel9;
  // Model for per_one component.
  late PerOneModel perOneModel10;
  // Model for Smokes component.
  late SmokesModel smokesModel1;
  // Model for Smokes component.
  late SmokesModel smokesModel2;
  // Model for Smokes component.
  late SmokesModel smokesModel3;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel2;
  // Model for drink component.
  late DrinkModel drinkModel1;
  // Model for drink component.
  late DrinkModel drinkModel2;
  // Model for drink component.
  late DrinkModel drinkModel3;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel3;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel1;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel2;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel3;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel4;
  // Model for bloodpage component.
  late BloodpageModel bloodpageModel5;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel4;
  // Model for cb_click component.
  late CbClickModel cbClickModel17;
  // Model for cb_click component.
  late CbClickModel cbClickModel18;
  // Model for cb_click component.
  late CbClickModel cbClickModel19;
  // Model for cb_click component.
  late CbClickModel cbClickModel20;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel5;
  // Model for Sum component.
  late SumModel sumModel;
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
    perSixModel1 = createModel(context, () => PerSixModel());
    perSixModel2 = createModel(context, () => PerSixModel());
    perSixModel3 = createModel(context, () => PerSixModel());
    perOneModel4 = createModel(context, () => PerOneModel());
    perOneModel5 = createModel(context, () => PerOneModel());
    perTwoModel4 = createModel(context, () => PerTwoModel());
    perTwoModel5 = createModel(context, () => PerTwoModel());
    perThreeModel4 = createModel(context, () => PerThreeModel());
    perThreeModel5 = createModel(context, () => PerThreeModel());
    perForeModel4 = createModel(context, () => PerForeModel());
    perForeModel5 = createModel(context, () => PerForeModel());
    perFiveModel4 = createModel(context, () => PerFiveModel());
    perFiveModel5 = createModel(context, () => PerFiveModel());
    perOneModel6 = createModel(context, () => PerOneModel());
    perOneModel7 = createModel(context, () => PerOneModel());
    perTwoModel6 = createModel(context, () => PerTwoModel());
    perTwoModel7 = createModel(context, () => PerTwoModel());
    perThreeModel6 = createModel(context, () => PerThreeModel());
    perThreeModel7 = createModel(context, () => PerThreeModel());
    perForeModel6 = createModel(context, () => PerForeModel());
    perForeModel7 = createModel(context, () => PerForeModel());
    perFiveModel6 = createModel(context, () => PerFiveModel());
    perFiveModel7 = createModel(context, () => PerFiveModel());
    perTwoModel8 = createModel(context, () => PerTwoModel());
    perTwoModel9 = createModel(context, () => PerTwoModel());
    perThreeModel8 = createModel(context, () => PerThreeModel());
    perThreeModel9 = createModel(context, () => PerThreeModel());
    perOneModel8 = createModel(context, () => PerOneModel());
    perOneModel9 = createModel(context, () => PerOneModel());
    perOneModel10 = createModel(context, () => PerOneModel());
    smokesModel1 = createModel(context, () => SmokesModel());
    smokesModel2 = createModel(context, () => SmokesModel());
    smokesModel3 = createModel(context, () => SmokesModel());
    startAsBottomModel2 = createModel(context, () => StartAsBottomModel());
    drinkModel1 = createModel(context, () => DrinkModel());
    drinkModel2 = createModel(context, () => DrinkModel());
    drinkModel3 = createModel(context, () => DrinkModel());
    startAsBottomModel3 = createModel(context, () => StartAsBottomModel());
    bloodpageModel1 = createModel(context, () => BloodpageModel());
    bloodpageModel2 = createModel(context, () => BloodpageModel());
    bloodpageModel3 = createModel(context, () => BloodpageModel());
    bloodpageModel4 = createModel(context, () => BloodpageModel());
    bloodpageModel5 = createModel(context, () => BloodpageModel());
    startAsBottomModel4 = createModel(context, () => StartAsBottomModel());
    cbClickModel17 = createModel(context, () => CbClickModel());
    cbClickModel18 = createModel(context, () => CbClickModel());
    cbClickModel19 = createModel(context, () => CbClickModel());
    cbClickModel20 = createModel(context, () => CbClickModel());
    startAsBottomModel5 = createModel(context, () => StartAsBottomModel());
    sumModel = createModel(context, () => SumModel());
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
    perSixModel1.dispose();
    perSixModel2.dispose();
    perSixModel3.dispose();
    perOneModel4.dispose();
    perOneModel5.dispose();
    perTwoModel4.dispose();
    perTwoModel5.dispose();
    perThreeModel4.dispose();
    perThreeModel5.dispose();
    perForeModel4.dispose();
    perForeModel5.dispose();
    perFiveModel4.dispose();
    perFiveModel5.dispose();
    perOneModel6.dispose();
    perOneModel7.dispose();
    perTwoModel6.dispose();
    perTwoModel7.dispose();
    perThreeModel6.dispose();
    perThreeModel7.dispose();
    perForeModel6.dispose();
    perForeModel7.dispose();
    perFiveModel6.dispose();
    perFiveModel7.dispose();
    perTwoModel8.dispose();
    perTwoModel9.dispose();
    perThreeModel8.dispose();
    perThreeModel9.dispose();
    perOneModel8.dispose();
    perOneModel9.dispose();
    perOneModel10.dispose();
    smokesModel1.dispose();
    smokesModel2.dispose();
    smokesModel3.dispose();
    startAsBottomModel2.dispose();
    drinkModel1.dispose();
    drinkModel2.dispose();
    drinkModel3.dispose();
    startAsBottomModel3.dispose();
    bloodpageModel1.dispose();
    bloodpageModel2.dispose();
    bloodpageModel3.dispose();
    bloodpageModel4.dispose();
    bloodpageModel5.dispose();
    startAsBottomModel4.dispose();
    cbClickModel17.dispose();
    cbClickModel18.dispose();
    cbClickModel19.dispose();
    cbClickModel20.dispose();
    startAsBottomModel5.dispose();
    sumModel.dispose();
    startAsBottomModel6.dispose();
  }
}
