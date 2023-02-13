part of 'course_watcher_bloc.dart';

@freezed
class CourseWatcherEvent with _$CourseWatcherEvent {
  const factory CourseWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory CourseWatcherEvent.watchUncompletedStarted() =
      _WatchUncompletedStarted;
  const factory CourseWatcherEvent.courseReceived(
      Either<CourseFailure, KtList<Course>> failureOrCourse) = _CourseReceived;
}
