import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'course.dart';
import 'course_failure.dart';

abstract class ICourseRepository {
  //CRUDe
  // watch methods for R (read)
  Stream<Either<CourseFailure, KtList<Course>>> watchAll();
  Stream<Either<CourseFailure, KtList<Course>>> watchUncompleted();
  Future<Either<CourseFailure, Unit>> create(Course note);
  Future<Either<CourseFailure, Unit>> update(Course note);
  Future<Either<CourseFailure, Unit>> delete(Course note);
}
