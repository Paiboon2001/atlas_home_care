import '/assessmentform/barthel/index1/index1_widget.dart';
import '/assessmentform/barthel/index10/index10_widget.dart';
import '/assessmentform/barthel/index2/index2_widget.dart';
import '/assessmentform/barthel/index3/index3_widget.dart';
import '/assessmentform/barthel/index4/index4_widget.dart';
import '/assessmentform/barthel/index5/index5_widget.dart';
import '/assessmentform/barthel/index6/index6_widget.dart';
import '/assessmentform/barthel/index7/index7_widget.dart';
import '/assessmentform/barthel/index8/index8_widget.dart';
import '/assessmentform/barthel/index9/index9_widget.dart';
import '/assessmentform/thirtytree/widget/start_as_bottom/start_as_bottom_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'barthel_index_score_widget.dart' show BarthelIndexScoreWidget;
import 'package:flutter/material.dart';

class BarthelIndexScoreModel extends FlutterFlowModel<BarthelIndexScoreWidget> {
  ///  Local state fields for this page.

  int? pagebarthel = 1;

  bool? voiceQuast1 = false;

  bool? voiceQuast2 = false;

  bool? voiceQuast3 = false;

  bool? voiceQuast4 = false;

  bool? voiceQuast5 = false;

  bool? voiceQuast6 = false;

  bool? voiceQuast7 = false;

  bool? voiceQuast8 = false;

  bool? voiceQuast9 = false;

  bool? voiceQuast10 = false;

  ///  State fields for stateful widgets in this page.

  // Model for index1 component.
  late Index1Model index1Model1;
  // Model for index1 component.
  late Index1Model index1Model2;
  // Model for index1 component.
  late Index1Model index1Model3;
  // Model for index2 component.
  late Index2Model index2Model1;
  // Model for index2 component.
  late Index2Model index2Model2;
  // Model for index2 component.
  late Index2Model index2Model3;
  // Model for index2 component.
  late Index2Model index2Model4;
  // Model for index3 component.
  late Index3Model index3Model1;
  // Model for index3 component.
  late Index3Model index3Model2;
  // Model for index4 component.
  late Index4Model index4Model1;
  // Model for index4 component.
  late Index4Model index4Model2;
  // Model for index4 component.
  late Index4Model index4Model3;
  // Model for index5 component.
  late Index5Model index5Model1;
  // Model for index5 component.
  late Index5Model index5Model2;
  // Model for index6 component.
  late Index6Model index6Model1;
  // Model for index6 component.
  late Index6Model index6Model2;
  // Model for index6 component.
  late Index6Model index6Model3;
  // Model for index6 component.
  late Index6Model index6Model4;
  // Model for index7 component.
  late Index7Model index7Model1;
  // Model for index7 component.
  late Index7Model index7Model2;
  // Model for index7 component.
  late Index7Model index7Model3;
  // Model for index8 component.
  late Index8Model index8Model1;
  // Model for index8 component.
  late Index8Model index8Model2;
  // Model for index8 component.
  late Index8Model index8Model3;
  // Model for index9 component.
  late Index9Model index9Model1;
  // Model for index9 component.
  late Index9Model index9Model2;
  // Model for index9 component.
  late Index9Model index9Model3;
  // Model for index10 component.
  late Index10Model index10Model1;
  // Model for index10 component.
  late Index10Model index10Model2;
  // Model for index10 component.
  late Index10Model index10Model3;
  // Model for Start_as_Bottom component.
  late StartAsBottomModel startAsBottomModel;

  @override
  void initState(BuildContext context) {
    index1Model1 = createModel(context, () => Index1Model());
    index1Model2 = createModel(context, () => Index1Model());
    index1Model3 = createModel(context, () => Index1Model());
    index2Model1 = createModel(context, () => Index2Model());
    index2Model2 = createModel(context, () => Index2Model());
    index2Model3 = createModel(context, () => Index2Model());
    index2Model4 = createModel(context, () => Index2Model());
    index3Model1 = createModel(context, () => Index3Model());
    index3Model2 = createModel(context, () => Index3Model());
    index4Model1 = createModel(context, () => Index4Model());
    index4Model2 = createModel(context, () => Index4Model());
    index4Model3 = createModel(context, () => Index4Model());
    index5Model1 = createModel(context, () => Index5Model());
    index5Model2 = createModel(context, () => Index5Model());
    index6Model1 = createModel(context, () => Index6Model());
    index6Model2 = createModel(context, () => Index6Model());
    index6Model3 = createModel(context, () => Index6Model());
    index6Model4 = createModel(context, () => Index6Model());
    index7Model1 = createModel(context, () => Index7Model());
    index7Model2 = createModel(context, () => Index7Model());
    index7Model3 = createModel(context, () => Index7Model());
    index8Model1 = createModel(context, () => Index8Model());
    index8Model2 = createModel(context, () => Index8Model());
    index8Model3 = createModel(context, () => Index8Model());
    index9Model1 = createModel(context, () => Index9Model());
    index9Model2 = createModel(context, () => Index9Model());
    index9Model3 = createModel(context, () => Index9Model());
    index10Model1 = createModel(context, () => Index10Model());
    index10Model2 = createModel(context, () => Index10Model());
    index10Model3 = createModel(context, () => Index10Model());
    startAsBottomModel = createModel(context, () => StartAsBottomModel());
  }

  @override
  void dispose() {
    index1Model1.dispose();
    index1Model2.dispose();
    index1Model3.dispose();
    index2Model1.dispose();
    index2Model2.dispose();
    index2Model3.dispose();
    index2Model4.dispose();
    index3Model1.dispose();
    index3Model2.dispose();
    index4Model1.dispose();
    index4Model2.dispose();
    index4Model3.dispose();
    index5Model1.dispose();
    index5Model2.dispose();
    index6Model1.dispose();
    index6Model2.dispose();
    index6Model3.dispose();
    index6Model4.dispose();
    index7Model1.dispose();
    index7Model2.dispose();
    index7Model3.dispose();
    index8Model1.dispose();
    index8Model2.dispose();
    index8Model3.dispose();
    index9Model1.dispose();
    index9Model2.dispose();
    index9Model3.dispose();
    index10Model1.dispose();
    index10Model2.dispose();
    index10Model3.dispose();
    startAsBottomModel.dispose();
  }
}
