import '/components/card_shadow.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/home/widget/job_assignee_row.dart';
import '/home/widget/visit_time_chips.dart';
import 'package:flutter/material.dart';

/// The horizontal job card used by every job section on the homepage
/// (รับมอบหมาย / เกินกำหนด / สำเร็จ / ในอนาคต). Only the accent colours and
/// the copy differ between sections.
class JobCard extends StatelessWidget {
  const JobCard({
    super.key,
    required this.img,
    required this.mainname,
    required this.age,
    required this.date,
    required this.time,
    required this.assignee,
    required this.nameColor,
    required this.avatarColor,
    this.badgeIcon,
    this.badgeColor = const Color(0xFFC9CFD6),
    this.badgeIconColor,
    this.onTap,
  });

  final String img;
  final String mainname;

  /// e.g. "48 ปี 2 เดือน 15 วัน"
  final String age;
  final String date;
  final String time;
  final String assignee;
  final Color nameColor;
  final Color avatarColor;

  /// Badge pinned to the bottom-right of the avatar; omitted when null.
  final IconData? badgeIcon;
  final Color badgeColor;
  final Color? badgeIconColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: kCardShadow,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: const AlignmentDirectional(1.0, 1.0),
                          children: [
                            Container(
                              width: 72.0,
                              height: 72.0,
                              decoration: BoxDecoration(
                                color: avatarColor,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(img).image,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            if (badgeIcon != null)
                              Container(
                                width: 24.0,
                                height: 24.0,
                                decoration: BoxDecoration(
                                  color: badgeColor,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    width: 2.0,
                                  ),
                                ),
                                child: Icon(
                                  badgeIcon,
                                  color: badgeIconColor ??
                                      FlutterFlowTheme.of(context).secondaryText,
                                  size: 16.0,
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(width: 12.0),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                mainname,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: nameColor,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                'อายุ $age',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelSmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelSmallIsCustom,
                                    ),
                              ),
                              const SizedBox(height: 16.0),
                              VisitTimeChips(date: date, time: time),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: 28.0,
                      height: 28.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: Color(0xFF9DA7A7),
                        size: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            JobAssigneeRow(name: assignee),
          ],
        ),
      ),
    );
  }
}
