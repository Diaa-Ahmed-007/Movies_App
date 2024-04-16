import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthHelper {
  Future<UserCredential> register({
    required String email,
    required String password,
  }) async {
    UserCredential credential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    log("AuthHelper");
    return credential;
    // } on FirebaseAuthException catch (e) {
    //   return e.message ?? "";
    // } catch (e) {
    //   return e.toString();
    // }
  }
}
