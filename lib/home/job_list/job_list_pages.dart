import '/flutter_flow/flutter_flow_theme.dart';
import '/home/job_list/job_list_widget.dart';
import 'package:flutter/material.dart';

const String _oldman =
    'assets/images/Patients/granpa.webp';
const String _girl =
    'assets/images/Patients/mama.webp';
const String _studentGirl =
    'assets/images/Patients/Nurs_girl.webp';
const String _oldgirl =
    'assets/images/Patients/granma.webp';
const String _collegeGirl =
    'assets/images/Patients/girl.webp';

const String _assignee = 'นางสาวกมลวรรณ ศรีนาบดี';
const String _age = '48 ปี 2 เดือน 15 วัน';

/// งานที่เกินกำหนด
class LateJobsWidget extends StatelessWidget {
  const LateJobsWidget({super.key});

  static String routeName = 'late_jobs';
  static String routePath = '/lateJobs';

  @override
  Widget build(BuildContext context) {
    return JobListWidget(
      title: 'งานที่เกินกำหนด',
      nameColor: FlutterFlowTheme.of(context).error,
      avatarColor: const Color(0xFFFE9E9E),
      jobs: const [
        JobListEntry(
          img: _oldman,
          mainname: 'นายสกลนคร ยามาราตรี',
          age: _age,
          date: '10 ธันวาคม 2568',
          time: '09:30 น.',
          assignee: _assignee,
        ),
        JobListEntry(
          img: _girl,
          mainname: 'นางกรกนก นรงค์ศรี',
          age: _age,
          date: '10 ธันวาคม 2568',
          time: '09:30 น.',
          assignee: _assignee,
        ),
      ],
    );
  }
}

/// งานสำเร็จ
class DoneJobsWidget extends StatelessWidget {
  const DoneJobsWidget({super.key});

  static String routeName = 'done_jobs';
  static String routePath = '/doneJobs';

  @override
  Widget build(BuildContext context) {
    return JobListWidget(
      title: 'งานสำเร็จ',
      nameColor: FlutterFlowTheme.of(context).customColor1,
      avatarColor: const Color(0xFF79DF9E),
      jobs: [
        JobListEntry(
          img: _girl,
          mainname: 'นางรัตนาการ สนามฉันท์',
          age: _age,
          date: '5 ธันวาคม 2568',
          time: '14:00 น.',
          assignee: _assignee,
          badgeIcon: Icons.check_rounded,
          badgeColor: FlutterFlowTheme.of(context).success,
          badgeIconColor: Colors.white,
        ),
        JobListEntry(
          img: _collegeGirl,
          mainname: 'นางสาวรัตนาการ สนามฉันท์',
          age: _age,
          date: '5 ธันวาคม 2568',
          time: '14:00 น.',
          assignee: _assignee,
          badgeIcon: Icons.check_rounded,
          badgeColor: FlutterFlowTheme.of(context).success,
          badgeIconColor: Colors.white,
        ),
      ],
    );
  }
}

/// งานในอนาคต
class FutureJobsWidget extends StatelessWidget {
  const FutureJobsWidget({super.key});

  static String routeName = 'future_jobs';
  static String routePath = '/futureJobs';

  @override
  Widget build(BuildContext context) {
    return const JobListWidget(
      title: 'งานในอนาคต',
      nameColor: Color(0xFF1B5FA8),
      avatarColor: Color(0xFF9CD3FB),
      jobs: [
        JobListEntry(
          img: _studentGirl,
          mainname: 'เด็กหญิงพิมพ์ชนก ใจดี',
          age: '9 ปี 3 เดือน 12 วัน',
          date: '20 ธันวาคม 2568',
          time: '10:00 น.',
          assignee: _assignee,
        ),
        JobListEntry(
          img: _oldgirl,
          mainname: 'นายประเสริฐ ทองสุข',
          age: '67 ปี 8 เดือน 4 วัน',
          date: '22 ธันวาคม 2568',
          time: '13:30 น.',
          assignee: 'นายวิรัช พงศ์ไพบูลย์',
        ),
      ],
    );
  }
}
