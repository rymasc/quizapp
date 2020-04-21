import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/services/services.dart';

class ProfileScreen extends StatelessWidget {

  final AuthService auth = AuthService();

  @override
  Widget build(BuildContext context) {

    var user = Provider.of<FirebaseUser>(context);

    return Scaffold(
      appBar:
          AppBar(title: Text(user.email), backgroundColor: Colors.deepOrange),
      body: Center(
        child: FlatButton(
            child: Text('logout'), 
            color: Colors.red, 
            onPressed: () async {
              await auth.signOut();
              Navigator.of(context).pushNamedAndRemoveUntil('/', (route)=> false);
            }),
      ),
    );
  }
}
