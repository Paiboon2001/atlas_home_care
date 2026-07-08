import '/components/main_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'pdpa_model.dart';
export 'pdpa_model.dart';

class PdpaWidget extends StatefulWidget {
  const PdpaWidget({super.key});

  static String routeName = 'PDPA';
  static String routePath = '/pdpa';

  @override
  State<PdpaWidget> createState() => _PdpaWidgetState();
}

class _PdpaWidgetState extends State<PdpaWidget> {
  late PdpaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PdpaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  // Shared text style for the long-form policy body.
  TextStyle _policyStyle() =>
      FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
            color: const Color(0xFF3D3D3D),
            fontSize: 14.0,
            letterSpacing: 0.0,
            fontWeight: FontWeight.w400,
            lineHeight: 1.7,
            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
          );

  Widget _para(String text) => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
        child: Text(text, style: _policyStyle()),
      );

  Widget _bullet(String text) => Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('•  ', style: _policyStyle()),
            Expanded(child: Text(text, style: _policyStyle())),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    final consented = _model.checkboxValue1 ?? false;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        appBar: AppBar(
          toolbarHeight: 48.0,
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 44.0,
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 18.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'นโยบายความเป็นส่วนตัว',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).titleMediumIsCustom,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFF5F7FA),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 24.0, 0.0, 24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Intro (gradient title + centered paragraph)
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ShaderMask(
                                blendMode: BlendMode.srcIn,
                                shaderCallback: (bounds) =>
                                    const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFF339FF3),
                                    Color(0xFF004078),
                                    Color(0xFFB238EB),
                                  ],
                                  stops: [0.16, 0.5, 0.88],
                                ).createShader(bounds),
                                child: Text(
                                  'Atlas Home Care',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineSmallFamily,
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        lineHeight: 1.4,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .headlineSmallIsCustom,
                                      ),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                'ให้ความสำคัญกับความเป็นส่วนตัวและความปลอดภัยของข้อมูลสุขภาพผู้ใช้อย่างสูงสุด โดยมุ่งมั่นปกป้องข้อมูลส่วนบุคคลตามมาตรฐานความปลอดภัยขั้นสูง โปรดศึกษาวิธีที่เรารวบรวมใช้และคุ้มครองข้อมูลของคุณเพิ่มเติม',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w400,
                                      lineHeight: 1.7,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        // Full policy text
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _para(
                                  '1. ข้อจำกัดความรับผิดชอบ (Disclaimer) AtlasHomeCare ออกแบบมาสำหรับบุคลากรทางการแพทย์ที่มีใบอนุญาตเท่านั้น ไม่ได้มีไว้สำหรับประชาชนทั่วไปหรือผู้ใช้ทั่วไป การเข้าถึงข้อมูลสุขภาพที่ละเอียดอ่อนทุกครั้งต้องผ่านการยืนยันตัวตนและกำหนดสิทธิ์ตามบทบาทหน้าที่ (role-based-access) แอปให้ข้อมูลเชิงลึกเพื่อประกอบการพิจารณา แต่ไม่ใช่สิ่งทดแทนคำแนะนำทางการแพทย์จากผู้เชี่ยวชาญ ผู้ใช้ควรปรึกษาผู้ให้บริการด้านสุขภาพที่มีคุณสมบัติก่อนตัดสินใจเรื่องที่เกี่ยวกับสุขภาพ'),
                              _para(
                                  '2. การจัดการสิทธิ์การเข้าถึงของแอป (App Permissions)'),
                              _bullet(
                                  'Bluetooth : สำหรับเชื่อมต่ออุปกรณ์ทางการแพทย์ (Medical IoT) ที่ได้รับการรับรอง'),
                              _bullet(
                                  'ตำแหน่งที่ตั้ง (Location) : สำหรับบันทึกการเยี่ยมผู้ป่วยและการติดตามด้านสุขภาพ'),
                              _bullet(
                                  'กล้อง (Camera) : สำหรับถ่ายภาพบันทึกผู้ป่วยและการประเมินสุขภาพ'),
                              _bullet(
                                  'การแจ้งเตือน (Notifications) : สำหรับเตือนนัดเยี่ยมและการแจ้งเตือนที่มีความสำคัญด้านเวลา'),
                              const SizedBox(height: 4.0),
                              _para(
                                  'สิทธิ์ต่าง ๆ จะถูกขอตามบริบทและขอทีละขั้นตอนเท่าที่จำเป็น ผู้ใช้สามารถปรับเปลี่ยนหรือเพิกถอนสิทธิ์ได้ตลอดเวลาในการตั้งค่าของอุปกรณ์'),
                              _para('3. การใช้ข้อมูล (Data Usage)'),
                              _bullet(
                                  'ProviderID : ใช้ยืนยันตัวตนบุคลากรทางการแพทย์ผ่านกระทรวงสาธารณสุข'),
                              _bullet(
                                  'เวชระเบียนผู้ป่วย : ครอบคลุมประวัติการเยี่ยม ข้อมูลโรคเรื้อรัง ผลแล็บ ยา และที่อยู่บ้าน'),
                              _bullet(
                                  'ข้อมูลตำแหน่ง (ไม่บังคับ) : ใช้เฉพาะการบันทึกการเยี่ยมบ้านและการกรอกข้อมูลตามบริบทเท่านั้น ไม่มีการติดตามตำแหน่งเบื้องหลัง'),
                              _bullet(
                                  'ข้อมูลการเยี่ยมบ้านและสัญญาณชีพ : บันทึกผลการเยี่ยม รายละเอียดการรักษา สัญญาณชีพจากอุปกรณ์ IoT (เช่น ความดัน, O₂, อุณหภูมิ) และรูปภาพ'),
                              _bullet(
                                  'AI Insights : ให้คำแนะนำเชิงข้อมูลเพื่อช่วยตัดสินใจ ไม่ใช่สิ่งทดแทนการวินิจฉัยทางคลินิก'),
                              _bullet(
                                  'ข้อมูลอุปกรณ์ (Device Info) : จำเป็นเพื่อรองรับการจับคู่และเชื่อมต่อ Bluetooth เท่านั้น'),
                              _bullet(
                                  'รหัสยืนยันตัวตน (Authentication Codes) : ใช้เปิด visit OPD และส่งข้อมูลวินิจฉัย ICD-10 อย่างปลอดภัย'),
                              const SizedBox(height: 4.0),
                              _para('4. เราใช้ข้อมูลของคุณอย่างไร'),
                              _bullet(
                                  'เพื่อตรวจสอบตัวตนบุคลากรทางการแพทย์ด้วย Provider ID'),
                              _bullet(
                                  'เพื่อเรียกดูและแสดงข้อมูลผู้ป่วยตามการควบคุมสิทธิ์ตามบทบาท (RBAC)'),
                              _bullet(
                                  'เพื่อบันทึกการเยี่ยมบ้านและอัปเดตข้อมูลการรักษาของผู้ป่วย'),
                              _bullet(
                                  'เพื่อให้บริการสรุปข้อมูลด้วย AI (เชิงข้อมูลเท่านั้น)'),
                              _bullet(
                                  'เพื่อรองรับขั้นตอนการทำงาน visit OPD และการกรอกข้อมูลวินิจฉัยอย่างปลอดภัย'),
                              const SizedBox(height: 4.0),
                              _para('5. การแบ่งปันข้อมูลและความปลอดภัย'),
                              _bullet('เราไม่ขายหรือให้เช่าข้อมูลผู้ใช้ใด ๆ'),
                              _bullet(
                                  'การเข้าถึงข้อมูลทั้งหมดจำกัดเฉพาะบุคลากรทางการแพทย์ที่ได้รับอนุญาตภายในเครือข่ายเดียวกัน'),
                              _bullet(
                                  'ข้อมูลผู้ป่วยและข้อมูลทางคลินิกทั้งหมดถูกเข้ารหัสด้วย TLS และมาตรฐานการเข้ารหัสสมัยใหม่'),
                              _bullet(
                                  'ข้อมูลจากอุปกรณ์ IoT จะไม่ถูกจัดเก็บหรือแบ่งปันเกินกว่าเซสชันทางการแพทย์ที่กำหนด'),
                              const SizedBox(height: 4.0),
                              _para('6. การควบคุมและการลบข้อมูลของผู้ใช้'),
                              _bullet(
                                  'ผู้ใช้สามารถจัดการสิทธิ์ Bluetooth, ตำแหน่ง, กล้อง และการแจ้งเตือนได้ในการตั้งค่าอุปกรณ์'),
                              _bullet(
                                  'ผู้ใช้สามารถลบข้อมูลของตนผ่านเมนู Privacy ในแอป หรืออีเมลมาที่ app.healthflow@gmail.com'),
                              _bullet(
                                  'คำขอลบข้อมูลจะดำเนินการให้ภายใน 30 วัน โดยลบข้อมูลสุขภาพที่เกี่ยวข้องทั้งหมดอย่างถาวร'),
                              const SizedBox(height: 4.0),
                              _para('7. ความเป็นส่วนตัวของเด็ก'),
                              _para(
                                  'แอปนี้มีไว้สำหรับบุคลากรทางการแพทย์ที่เป็นผู้ใหญ่เท่านั้น ไม่ได้ออกแบบหรือมุ่งเป้าไปที่เด็ก หากมีการเก็บข้อมูลของผู้เยาว์โดยไม่ตั้งใจ จะถูกลบทันที'),
                              _para(
                                  '8. การเชื่อมต่อกับบุคคลภายนอก (Third-Party)'),
                              _para(
                                  'แอปเชื่อมต่ออย่างปลอดภัยกับฐานข้อมูลโรงพยาบาล HOSxP, ระบบจัดเก็บข้อมูลบนคลาวด์ที่เข้ารหัส และแพลตฟอร์มเทเลเมดิซีนที่ได้รับอนุญาต บุคคลภายนอกแต่ละรายปฏิบัติตามมาตรฐานความเป็นส่วนตัวของตนเอง'),
                              _para('9. การปฏิบัติตามกฎระเบียบ'),
                              _para(
                                  'เราปฏิบัติตามนโยบายล่าสุดของ Google Play เกี่ยวกับ Health Connect และสิทธิ์การเข้าถึงข้อมูลที่ละเอียดอ่อน การเข้าถึงข้อมูลเป็นไปอย่างโปร่งใส ขอทีละขั้น และจำกัดตามวัตถุประสงค์ เราปฏิบัติตามกฎหมายคุ้มครองข้อมูลสุขภาพที่เกี่ยวข้อง รวมถึง HIPAA (หากมีผลบังคับใช้) และกฎระเบียบในท้องถิ่น'),
                              _para('10. การเปลี่ยนแปลงนโยบายนี้'),
                              _para(
                                  'เราอาจปรับปรุงนโยบายนี้เพื่อให้สอดคล้องกับข้อกำหนดหรือการพัฒนาที่เปลี่ยนแปลงไป ผู้ใช้จะได้รับแจ้งผ่านการแจ้งเตือนในแอปหรืออีเมลหากมีการเปลี่ยนแปลงที่มีนัยสำคัญ'),
                              _para('11. ติดต่อเรา'),
                              _bullet('อีเมล: healthflowdevteam@gmail.com'),
                              _bullet('เว็บไซต์: https://atlasplatform.in.th'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Pinned consent card
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Color(0x1A0C2B4F),
                        offset: Offset(0.0, -2.0),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        16.0, 12.0, 16.0, 32.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                unselectedWidgetColor: const Color(0xFFB9BCC1),
                              ),
                              child: Checkbox(
                                value: _model.checkboxValue1 ??= false,
                                onChanged: (newValue) async {
                                  safeSetState(() =>
                                      _model.checkboxValue1 = newValue!);
                                },
                                side: const BorderSide(
                                  width: 1.5,
                                  color: Color(0xFFB9BCC1),
                                ),
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 12.0),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 0.0),
                                child: Text(
                                  'กรุณากดยินยอมเงื่อนไขและข้อตกลงการใช้งาน เพื่อดำเนินการต่อและเข้าถึงบริการของ Atlas Home Care',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodySmallFamily,
                                        color: consented
                                            ? Colors.black
                                            : const Color(0xFF8A8F97),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w400,
                                        lineHeight: 1.7,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodySmallIsCustom,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        MainButton(
                          text: 'ยืนยัน',
                          enabled: consented,
                          onPressed: () {
                            context.pushNamed(
                              ChooseHosWidget.routeName,
                              queryParameters: {
                                'photo': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                                'text': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                                'chand': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
