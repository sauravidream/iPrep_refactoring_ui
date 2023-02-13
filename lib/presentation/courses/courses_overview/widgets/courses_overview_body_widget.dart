import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_package/application/auth/course/course_watcher/course_watcher_bloc.dart';
import 'category_chip_widget.dart';
import 'course_card_widget.dart';
import 'error_course_card_widget.dart';
import '../../../core/widget/loader_widget/loader_widget.dart';
import 'critical_failure_display_widget.dart';

class CoursesOverviewBody extends StatelessWidget {
  const CoursesOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryChipWidget(),
        const SizedBox(height: 25),
        Expanded(
          child: BlocBuilder<CourseWatcherBloc, CourseWatcherState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => Container(),
                loadInProgress: (_) => const LoaderWidget(),
                loadSuccess: (state) => ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 15),
                    itemCount: state.course.size,
                    itemBuilder: (context, index) {
                      final course = state.course[index];
                      if (course.failureOption.isSome()) {
                        return ErrorCourseCard(course: course);
                      } else {
                        return CourseCard(course: course);
                      }
                    }),
                loadFailure: (state) =>
                    CriticalFailureDisplay(failure: state.courseFailure),
              );
            },
          ),
        ),
      ],
    );
  }
}
