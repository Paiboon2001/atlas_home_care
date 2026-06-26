import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/utils/close/close_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'health_sumary_a_i_model.dart';
export 'health_sumary_a_i_model.dart';

class HealthSumaryAIWidget extends StatefulWidget {
  const HealthSumaryAIWidget({super.key});

  @override
  State<HealthSumaryAIWidget> createState() => _HealthSumaryAIWidgetState();
}

class _HealthSumaryAIWidgetState extends State<HealthSumaryAIWidget>
    with TickerProviderStateMixin {
  late HealthSumaryAIModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HealthSumaryAIModel());

    _model.textController ??= TextEditingController(
        text:
            'สวัสดีครับ จากข้อมูลที่คุณให้มา ผมมีความกังวลเกี่ยวกับสุขภาพของคุณอย่างมากครับ มีหลายประเด็นที่ต้องให้ความสนใจเป็นพิเศษ:\n1. อุณหภูมิร่างกายสูงเกินไป: อุณหภูมิร่างกาย 45 องศาเซลเซียส เป็นภาวะที่อันตรายถึงชีวิต (Hyperthermia) ซึ่งสูงเกินกว่าอุณหภูมิร่างกายปกติของมนุษย์มาก (ปกติอยู่ที่ประมาณ 36.5-37.5 องศาเซลเซียส) ภาวะนี้อาจเกิดจาก:\nโรคลมแดด (Heatstroke): การสัมผัสกับความร้อนสูงเกินไปการติดเขื้อรุนแรง: เช่น ภาวะพิษเหตุติดเชื้อ (Sepsis)\nปฏิกิริยาจากยาบางชนิด:\nความผิดปกติของสมอง: ที่ควบคุมอุณหภูมิร่างกาย\nคำแนะนำ:\nรีบไปพบแพทย์ทันที: นี่เป็นภาวะฉุกเฉินทางการแพทย์ที่ต้องได้รับการรักษา\nอย่างเร่งด่วน\nระหว่างรอความช่วยเหลือ: พยายามลดอุณหภูมิร่างกายโดยด่วน เช่น เช็ดตัว ด้วยน้ำเย็น, ประคบน้ำแข็งบริเวณคอและข้อพับ, ดื่มน้ำมากๆ (ถ้าสามารถทำได้)\n2. ความดันโลหิตต่ำมาคะ ความดันโลหิต 0/0 mmHg เป็นภาวะที่อันตรายมาก ซึ่งหมายความว่าไม่มีความคันโลหัตเลย ภาวะนี้อาจเก็ดจาก:\nภาวะช็อก (Shock): เช่น ช็อกจากการเสียเลือด, ช็อกจากการติดเชื้อ, หรือ\nช็อกจากภาวะหัวใจส้มเหลว\nภาวะหัวใจหยุดเต้น:\nภาวะแทรกข้อนรุนแรงอื่นๆ:');
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 2500.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 2500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1500.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 2500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        height: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return 650.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return 650.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 750.0;
          } else {
            return 750.0;
          }
        }(),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 32.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 32.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 40.0;
                      } else {
                        return 40.0;
                      }
                    }(),
                    height: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 32.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 32.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 40.0;
                      } else {
                        return 40.0;
                      }
                    }(),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    'ข้อมูลสุขภาพของผู้ป่วย',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleSmallFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).titleSmallIsCustom,
                        ),
                  ),
                  wrapWithModel(
                    model: _model.closeModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CloseWidget(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                child: Container(
                  height: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 200.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 200.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 300.0;
                    } else {
                      return 300.0;
                    }
                  }(),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0x4DA7DEED), Color(0x26B9C0FF)],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 50.0,
                              height: 180.0,
                              decoration: BoxDecoration(
                                color: Color(0x76B9C0FF),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation1']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 180.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0x76B9C0FF),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation2']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 50.0,
                              height: 130.0,
                              decoration: BoxDecoration(
                                color: Color(0x76B9C0FF),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation3']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 130.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0x76B9C0FF),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation4']!),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0x76B9C0FF),
                                shape: BoxShape.circle,
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation5']!),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10.0,
                                sigmaY: 10.0,
                              ),
                              child: TextFormField(
                                controller: _model.textController,
                                focusNode: _model.textFieldFocusNode,
                                autofocus: false,
                                readOnly: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: false,
                                  alignLabelWithHint: false,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      lineHeight: 2.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                                maxLines: 100,
                                cursorColor: Color(0x002196F3),
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
