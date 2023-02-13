import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';
import 'package:library_package/domain/course/course.dart';

import 'package:library_package/domain/course/course_failure.dart';
import 'package:library_package/infrastructure/core/firestore_helper.dart';
import 'package:library_package/infrastructure/course/course_dtos.dart';

import '../../domain/course/i_course_repository.dart';

@LazySingleton(as: ICourseRepository)
class CourseRepository extends ICourseRepository {
  CourseRepository(this._firestore);
  final FirebaseFirestore _firestore;
  @override
  Future<Either<CourseFailure, Unit>> create(Course note) {
    throw UnimplementedError();
  }

  @override
  Future<Either<CourseFailure, Unit>> delete(Course note) {
    throw UnimplementedError();
  }

  @override
  Future<Either<CourseFailure, Unit>> update(Course note) {
    throw UnimplementedError();
  }

  @override
  Stream<Either<CourseFailure, KtList<Course>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.courseCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<CourseFailure, KtList<Course>>(
            snapshot.docs
                .map((doc) => CourseDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const CourseFailure.insufficientPermission());
      } else {
        return left(const CourseFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<CourseFailure, KtList<Course>>> watchUncompleted() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.courseCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<CourseFailure, KtList<Course>>(
            snapshot.docs
                .map((doc) => CourseDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const CourseFailure.insufficientPermission());
      } else {
        return left(const CourseFailure.unexpected());
      }
    });
  }
}
