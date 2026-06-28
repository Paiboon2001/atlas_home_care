import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/homevisitlist/widget/botton_way/botton_way_widget.dart';
import '/homevisitlist/widget/item_homefamily/item_homefamily_widget.dart';
import '/homevisitlist/widget/total_parents/total_parents_widget.dart';
import '/utils/close/close_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'buttonsheetfamily_model.dart';
export 'buttonsheetfamily_model.dart';

class ButtonsheetfamilyWidget extends StatefulWidget {
  const ButtonsheetfamilyWidget({super.key});

  @override
  State<ButtonsheetfamilyWidget> createState() =>
      _ButtonsheetfamilyWidgetState();
}

class _ButtonsheetfamilyWidgetState extends State<ButtonsheetfamilyWidget> {
  late ButtonsheetfamilyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonsheetfamilyModel());

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
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        height: 800.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
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
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    'รายชื่อบุลคลในบ้าน',
                    textAlign: TextAlign.start,
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
                    child: const CloseWidget(),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1.0,
              thickness: 1.0,
              color: Color(0xFFDCE0EA),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: wrapWithModel(
                        model: _model.itemHomefamilyModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const ItemHomefamilyWidget(
                          homenumber: '1',
                          location:
                              'บ้านเลขที่ 1 หมู่ 6 บ้านกฤษดานคร แขวงราษฎร์บูรณะ เขตราษฎร์บูรณะ กรุงเทพมหานคร 10140',
                          peoplinhouse: ' ',
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.totalParentsModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const TotalParentsWidget(),
                    ),
                  ]
                      .divide(const SizedBox(height: 16.0))
                      .around(const SizedBox(height: 16.0)),
                ),
              ),
            ),
            const Divider(
              height: 1.0,
              thickness: 1.0,
              color: Color(0xFFDCE0EA),
            ),
            wrapWithModel(
              model: _model.bottonWayModel,
              updateCallback: () => safeSetState(() {}),
              child: const BottonWayWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
