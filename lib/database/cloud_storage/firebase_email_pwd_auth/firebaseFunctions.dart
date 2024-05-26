import 'package:firebase_auth/firebase_auth.dart';

class FirebaseFunctions{
  Future<String?> signUpUser(
  {required String email,
    required String pwd}) async{
    try{
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: email,
        password: pwd,
      );
      return null;
    } on FirebaseAuthException catch (e){
      return e.message;
    } catch (e){
      print(e);
    }
  }

  Future<String?> signInUser(
      {required String email, required String pwd}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: pwd);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    } catch (e) {
      print(e);
    }
  }

  Future<void> logoutUser() async{
    await FirebaseAuth.instance.signOut();
  }

}