import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'non_smartcard_model.dart';
export 'non_smartcard_model.dart';

class NonSmartcardWidget extends StatefulWidget {
  const NonSmartcardWidget({super.key});

  @override
  State<NonSmartcardWidget> createState() => _NonSmartcardWidgetState();
}

class _NonSmartcardWidgetState extends State<NonSmartcardWidget> {
  late NonSmartcardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NonSmartcardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 6.0,
            color: Color(0x27000000),
            offset: Offset(
              0.0,
              0.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Center(
                  child: Builder(
                    builder: (context) {
                      // Figma: card artwork ≈ 67% of the card width (228 of 343).
                      final double cardW =
                          (MediaQuery.sizeOf(context).width - 32.0) * 0.67;
                      final double cardH = cardW * 159.0 / 239.0;
                      return Container(
                        width: cardW,
                        height: cardH,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 8.0,
                              color: Color(0x145F9ED6),
                              offset: Offset(0.0, 0.0),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Stack(
                          children: [
                            Positioned.fill(
                              child: SvgPicture.asset(
                                'assets/images/CID2.svg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            // flutter_svg can't render the SVG's embedded <image>
                            // pattern fill, so overlay the extracted photo at its
                            // rect fractions (viewBox 239x159, rect 182.7,84.3
                            // 42x53.75).
                            Positioned(
                              left: cardW * (182.703 / 239.0),
                              top: cardH * (84.2988 / 159.0),
                              width: cardW * (42.056 / 239.0),
                              height: cardH * (53.7549 / 159.0),
                              child: Image.asset(
                                'assets/images/cid_person.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0x27A2A2A2),
                  borderRadius: BorderRadius.circular(24.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    width: 2.0,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5.0,
                      sigmaY: 5.0,
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Wrap(
                          spacing: 16.0,
                          runSpacing: 8.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Text(
                              'กรุณานำบัตรประชาชนของคุณเสียบที่เครื่องอ่านบัตร',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    letterSpacing: 0.0,
                                    lineHeight: 1.5,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyLargeIsCustom,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 8.0)),
          ),
        ],
      ),
    );
  }
}
