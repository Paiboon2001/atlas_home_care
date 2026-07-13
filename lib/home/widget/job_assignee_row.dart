import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

/// Full-width footer row of a job card: a divider, then "ผู้รับงาน : <name>".
class JobAssigneeRow extends StatelessWidget {
  const JobAssigneeRow({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Color(0xFFEAEFFB))),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Icon(
            Icons.person_outline,
            color: Color(0xFF8A8F97),
            size: 16.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
              child: Text(
                'ผู้รับงาน : $name',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                      color: const Color(0xFF8A8F97),
                      fontSize: 14.0,
                      letterSpacing: -0.3,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).bodySmallIsCustom,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
