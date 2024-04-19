import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/data/models/firebase_movie_model.dart';
import 'package:movies_app/data/models/user_model.dart';

@singleton
class FireStoreHelper {
  static CollectionReference<UserModel> getUserCollections() {
    var refernce = FirebaseFirestore.instance.collection("User").withConverter(
      fromFirestore: (snapshot, options) {
        Map<String, dynamic>? data = snapshot.data();
        return UserModel.fromFireStore(data ?? {});
      },
      toFirestore: (UserModel user, options) {
        return user.toFirestore();
      },
    );
    return refernce;
  }

  static Future<void> addUser({
    required String userId,
    required String email,
    required String firstName,
    required String lastName,
  }) async {
    var document = getUserCollections().doc(userId);
    await document.set(UserModel(
        email: email,
        userid: userId,
        firstName: firstName,
        lastName: lastName));
  }

  static Future<UserModel?> getUser({required String userId}) async {
    var userDoc = getUserCollections().doc(userId);
    var snapShot = await userDoc.get();
    UserModel? user = snapShot.data();
    return user;
  }

  static CollectionReference<FireBaseMovieModel> getMovieCollections(
      {required String userid}) {
    var refernce =
        getUserCollections().doc(userid).collection("MyMovies").withConverter(
      fromFirestore: (snapshot, options) {
        Map<String, dynamic>? data = snapshot.data();
        return FireBaseMovieModel.fromJson(data ?? {});
      },
      toFirestore: (FireBaseMovieModel movie, options) {
        return movie.toJson();
      },
    );
    return refernce;
  }

  static addMovie(
      {required String userid, required FireBaseMovieModel movie}) async {
    await getMovieCollections(userid: userid).add(movie);
  }

  static Future<List<FireBaseMovieModel>> getMovies({required String userid}) async {
    QuerySnapshot<FireBaseMovieModel> movie =
        await getMovieCollections(userid: userid).get();
    List<FireBaseMovieModel> movieList =
        movie.docs.map((e) => e.data()).toList();
    return movieList;
  }
  // static CollectionReference<courseModel> getCoursesCollections() {
  //   var refernce =
  //       FirebaseFirestore.instance.collection("Courses").withConverter(
  //             fromFirestore: (snapshot, options) {
  //               Map<String, dynamic>? data = snapshot.data();
  //               return courseModel.FromFirestore(data ?? {});
  //             },
  //             toFirestore: (courseModel, options) => courseModel.toFirestore(),
  //           );
  //   return refernce;
  // }

  // static Future<void> addCourse({required courseModel course}) async {
  //   var doucment = getCoursesCollections().doc(course.courseId);
  //   course.courseId = doucment.id;
  //   await doucment.set(course);
  // }

  // static Future<List<courseModel>> getAllCourse() async {
  //   var courseQuery = await getCoursesCollections().get();
  //   List<courseModel> coursesList =
  //       courseQuery.docs.map((Snapshot) => Snapshot.data()).toList();
  //   return coursesList;
  // }

  // static Future<List<courseModel>> getBestSellingCourse() async {
  //   var courseQuery = await getCoursesCollections()
  //       .orderBy("studentNum", descending: true)
  //       .get();
  //   List<courseModel> coursesList =
  //       courseQuery.docs.map((Snapshot) => Snapshot.data()).toList();
  //   return coursesList;
  // }
}
