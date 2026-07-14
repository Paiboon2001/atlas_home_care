import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/widget/job_card.dart';
import '/index.dart';
import 'package:flutter/material.dart';

/// One job listed on a [JobListWidget] page.
class JobListEntry {
  const JobListEntry({
    required this.img,
    required this.mainname,
    required this.age,
    required this.date,
    required this.time,
    required this.assignee,
    this.badgeIcon,
    this.badgeColor,
    this.badgeIconColor,
  });

  final String img;
  final String mainname;
  final String age;
  final String date;
  final String time;
  final String assignee;
  final IconData? badgeIcon;
  final Color? badgeColor;
  final Color? badgeIconColor;
}

/// Full-page list behind each homepage section's "จำนวน N งาน" header
/// (รับมอบหมาย / เกินกำหนด / สำเร็จ / ในอนาคต). Same app bar, same JobCard —
/// only the title and the accent colours change.
class JobListWidget extends StatelessWidget {
  const JobListWidget({
    super.key,
    required this.title,
    required this.jobs,
    required this.nameColor,
    required this.avatarColor,
  });

  final String title;
  final List<JobListEntry> jobs;
  final Color nameColor;
  final Color avatarColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          title,
          style: FlutterFlowTheme.of(context).titleMedium.override(
                fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).titleMediumIsCustom,
              ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: RichText(
                textScaler: MediaQuery.of(context).textScaler,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${jobs.length}',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color:
                                FlutterFlowTheme.of(context).secondaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                    ),
                    TextSpan(
                      text: ' งาน',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodySmallFamily,
                            color:
                                FlutterFlowTheme.of(context).secondaryBackground,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodySmallIsCustom,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32.0),
            topRight: Radius.circular(32.0),
          ),
        ),
        child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 48.0),
          itemCount: jobs.length,
          separatorBuilder: (_, __) => const SizedBox(height: 8.0),
          itemBuilder: (context, index) {
            final job = jobs[index];
            return JobCard(
              img: job.img,
              mainname: job.mainname,
              age: job.age,
              date: job.date,
              time: job.time,
              assignee: job.assignee,
              nameColor: nameColor,
              avatarColor: avatarColor,
              badgeIcon: job.badgeIcon,
              badgeColor: job.badgeColor ?? const Color(0xFFC9CFD6),
              badgeIconColor: job.badgeIconColor,
              onTap: () =>
                  context.pushNamed(AddVisitinginformationWidget.routeName),
            );
          },
        ),
      ),
    );
  }
}
