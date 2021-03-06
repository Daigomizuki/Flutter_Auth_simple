import 'package:fire_auth_test/models/user.dart';
import 'package:fire_auth_test/screens/wrapper.dart';
import 'package:fire_auth_test/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';


void main() async {

  //firebase initialization
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Reuser>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}

