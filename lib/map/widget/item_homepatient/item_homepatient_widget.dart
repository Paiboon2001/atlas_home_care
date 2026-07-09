import '/components/real_map_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/map/widget/pin/pin_widget.dart';
import 'package:flutter/material.dart';
import 'item_homepatient_model.dart';
export 'item_homepatient_model.dart';

class ItemHomepatientWidget extends StatefulWidget {
  const ItemHomepatientWidget({
    super.key,
    this.homenumber,
    this.location,
    this.peoplinhouse,
    this.colorarrow,
  });

  /// homenumber
  final String? homenumber;

  /// location
  final String? location;

  /// Num people in the house
  final String? peoplinhouse;

  final Color? colorarrow;

  @override
  State<ItemHomepatientWidget> createState() => _ItemHomepatientWidgetState();
}

class _ItemHomepatientWidgetState extends State<ItemHomepatientWidget> {
  late ItemHomepatientModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemHomepatientModel());

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
            blurRadius: 4.0,
            color: Color(0x19000000),
            offset: Offset(
              0.0,
              0.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.location,
                    'location',
                  ),
                  maxLines: 2,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        lineHeight: 1.7,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
              ].divide(const SizedBox(height: 12.0)),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24.0),
                bottomRight: Radius.circular(24.0),
              ),
              border: Border.all(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Stack(
                alignment: const AlignmentDirectional(0.0, 0.0),
                children: [
                  const ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.0),
                      bottomRight: Radius.circular(24.0),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 120.0,
                      child: RealMap(
                        showCenterPin: true,
                        interactive: false,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.03, 0.06),
                    child: wrapWithModel(
                      model: _model.pinModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const PinWidget(
                        num: '1',
                        color2: Color(0xFFFFBD00),
                        color1: Color(0xFFFFE7A2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ].divide(const SizedBox(height: 8.0)),
      ),
    );
  }
}
