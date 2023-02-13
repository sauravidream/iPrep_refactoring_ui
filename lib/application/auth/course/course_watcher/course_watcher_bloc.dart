import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:library_package/domain/course/course.dart';
import 'package:library_package/domain/course/i_course_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:library_package/domain/course/course_failure.dart';

part 'course_watcher_event.dart';
part 'course_watcher_state.dart';
part 'course_watcher_bloc.freezed.dart';

@injectable
class CourseWatcherBloc extends Bloc<CourseWatcherEvent, CourseWatcherState> {
  final ICourseRepository _courseRepository;
  CourseWatcherBloc(this._courseRepository)
      : super(const CourseWatcherState.initial()) {
    on<_WatchAllStarted>((event, emit) => watchAllStarted(event, emit));
    on<_WatchUncompletedStarted>(
        (event, emit) => watchUncompletedStarted(event, emit));
    on<_CourseReceived>((event, emit) => courseReceived(event, emit));
  }

  StreamSubscription<Either<CourseFailure, KtList<Course>>>?
      _courseStreamSubscription;

  void courseReceived(_CourseReceived event, Emitter<CourseWatcherState> emit) {
    emit(event.failureOrCourse.fold(
      (f) => CourseWatcherState.loadFailure(f),
      (course) => CourseWatcherState.loadSuccess(course),
    ));
  }

  Future<void> watchUncompletedStarted(
      _WatchUncompletedStarted event, Emitter<CourseWatcherState> emit) async {
    emit(const CourseWatcherState.loadInProgress());
    await _courseStreamSubscription?.cancel();
    _courseStreamSubscription = _courseRepository.watchUncompleted().listen(
        (failureOrCourse) =>
            add(CourseWatcherEvent.courseReceived(failureOrCourse)));
  }

  Future<void> watchAllStarted(
      _WatchAllStarted event, Emitter<CourseWatcherState> emit) async {
    emit(const CourseWatcherState.loadInProgress());
    await _courseStreamSubscription?.cancel();
    _courseStreamSubscription = _courseRepository.watchAll().listen(
        (failureOrCourse) =>
            add(CourseWatcherEvent.courseReceived(failureOrCourse)));
  }
}
