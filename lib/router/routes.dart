import 'package:attandance_app/model/course.dart';
import 'package:attandance_app/model/staff.dart';
import 'package:attandance_app/model/student.dart';
import 'package:attandance_app/presentation/admin/screens/add_student_screen.dart';
import 'package:attandance_app/presentation/admin/screens/admin_home_screen.dart';
import 'package:attandance_app/presentation/admin/screens/class_screen.dart';
import 'package:attandance_app/presentation/admin/screens/course_screen.dart';
import 'package:attandance_app/presentation/admin/screens/create_class_room_screen.dart';
import 'package:attandance_app/presentation/admin/screens/create_staff_screen.dart';
import 'package:attandance_app/presentation/admin/screens/create_student_screen.dart';
import 'package:attandance_app/presentation/admin/screens/staff_screen.dart';
import 'package:attandance_app/presentation/admin/screens/student_screen.dart';
import 'package:attandance_app/presentation/screens/login_screen.dart';
import 'package:attandance_app/presentation/screens/splash_screen.dart';
import 'package:attandance_app/presentation/staff/screens/Staff_course_screen.dart';
import 'package:attandance_app/presentation/staff/screens/mark_attandance_screen.dart';
import 'package:attandance_app/presentation/staff/screens/staff_home_screen.dart';
import 'package:attandance_app/presentation/staff/screens/staff_profile_screen.dart';
import 'package:attandance_app/presentation/student/screens/student_course_screen.dart';
import 'package:attandance_app/presentation/student/screens/student_home_screen.dart';
import 'package:attandance_app/presentation/student/screens/student_profile_screen.dart';
import 'package:attandance_app/presentation/student/screens/student_view_course_screen.dart';
import 'package:flutter/cupertino.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AddStudentScreen.routeName:
        final args = settings.arguments;
        return CupertinoPageRoute(
            builder: (_) => AddStudentScreen(
                  semester: args as String,
                ));
      case AdminHomeScreen.routeName:
        return CupertinoPageRoute(builder: (_) => const AdminHomeScreen());
      case ClassScreen.routeName:
        return CupertinoPageRoute(builder: (_) => const ClassScreen());
      case CourseScreen.routeName:
        return CupertinoPageRoute(builder: (_) => const CourseScreen());
      case CreateClassRoomScreen.routeName:
        return CupertinoPageRoute(
            builder: (_) => const CreateClassRoomScreen());
      case CreateStaffScreen.routeName:
        final arg = settings.arguments;
        if (arg == null) {
          return CupertinoPageRoute(builder: (_) => const CreateStaffScreen());
        } else {
          final args = arg as List;
          return CupertinoPageRoute(
              builder: (_) => CreateStaffScreen(
                    staff: args[0] as Staff,
                    index: args[1] as int,
                  ));
        }

      case CreateStudentScreen.routeName:
        final arg = settings.arguments;
        if (arg == null) {
          return CupertinoPageRoute(
              builder: (_) => const CreateStudentScreen());
        } else {
          final args = arg as List;
          return CupertinoPageRoute(
              builder: (_) => CreateStudentScreen(
                    student: args[0] as Student,
                    index: args[1] as int,
                  ));
        }
      case MarkAttandanceScreen.routeName:
        final arg = settings.arguments as List;
        return CupertinoPageRoute(
          builder: (_) => MarkAttandanceScreen(
            students: arg[0],
            course: arg[1] as Course,
            classRoom: arg[2],
          ),
        );
      case StaffHomeScreen.routeName:
        return CupertinoPageRoute(builder: (_) => const StaffHomeScreen());
      case StaffCourseScreen.routeName:
        return CupertinoPageRoute(builder: (_) => const StaffCourseScreen());
      case StaffProfileScreen.routeName:
        return CupertinoPageRoute(builder: (_) => const StaffProfileScreen());
      case SplashScreen.routeName:
        return CupertinoPageRoute(builder: (_) => const SplashScreen());
      case StudentHomeScreen.routeName:
        return CupertinoPageRoute(builder: (_) => const StudentHomeScreen());
      case StudentCourseScreen.routeName:
        return CupertinoPageRoute(builder: (_) => const StudentCourseScreen());

      case StudentProfileScreen.routeName:
        return CupertinoPageRoute(builder: (_) => const StudentProfileScreen());
      case StudentViewCourseScreen.routeName:
        final args = settings.arguments as String;
        return CupertinoPageRoute(
          builder: (_) => StudentViewCourseScreen(
            courseName: args,
          ),
        );
      case LogInScreen.routeName:
        return CupertinoPageRoute(builder: (_) => const LogInScreen());
      case StaffScreen.routeName:
        return CupertinoPageRoute(builder: (_) => const StaffScreen());
      case StudentScreen.routeName:
        return CupertinoPageRoute(builder: (_) => const StudentScreen());
      default:
        return CupertinoPageRoute(
          builder: (_) => const SplashScreen(),
        );
    }
  }
}
