import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'item_servicelocations_model.dart';
export 'item_servicelocations_model.dart';

class ItemServicelocationsWidget extends StatefulWidget {
  const ItemServicelocationsWidget({
    super.key,
    this.servicelocations,
  });

  /// Servicelocations
  final String? servicelocations;

  @override
  State<ItemServicelocationsWidget> createState() =>
      _ItemServicelocationsWidgetState();
}

class _ItemServicelocationsWidgetState
    extends State<ItemServicelocationsWidget> {
  late ItemServicelocationsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemServicelocationsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          height: 48.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.servicelocations,
                  'Servicelocations',
                ),
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).labelMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).labelMediumIsCustom,
                    ),
              ),
            ],
          ),
        ),
        Divider(
          height: 1.0,
          thickness: 1.0,
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
      ],
    );
  }
}
