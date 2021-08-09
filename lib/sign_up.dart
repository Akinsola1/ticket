import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ticket_login_signin/Admin_Homepage.dart';
import 'package:ticket_login_signin/loading_page.dart';

class sign_up extends StatefulWidget {
  const sign_up({Key? key}) : super(key: key);
  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  bool loading = false;
  bool rememberMe = false;
  late String _email, _password;
  final auth = FirebaseAuth.instance;
  _buildDesignText() {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30, 3, 10, 0),
                child: Text(
                  "HELLO",
                  style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 67, 10, 0),
                    child: Text(
                      "ADMIN",
                      style: TextStyle(
                          fontSize: 70.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 60),
                    child: Text(
                      ".",
                      style: TextStyle(
                          fontSize: 70.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[500]),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }

  _buildEmialTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'EMAIL',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.lightBlueAccent,
          ),
          height: 60,
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  hintText: 'ENTER YOUR EMAIL',
                  hintStyle: TextStyle(color: Colors.white, fontSize: 14)),
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              }),
        ),
      ],
    );
  }

  Widget _EnterPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'PASSWORD',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.lightBlueAccent,
          ),
          height: 60,
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  hintText: 'ENTER A PASSWORD',
                  hintStyle: TextStyle(color: Colors.white, fontSize: 14)),
              onChanged: (value) {
                setState(() {
                  _password = value.trim();
                });
              }),
        ),
      ],
    );
  }

  Widget _buildloginbutton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () {
          _signin(_email, _password);
        },
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.white,
        child: const Text(
          "LET'S GO ",
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 1.5,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return loading_page();
    } else {
      return Scaffold(
          backgroundColor: Colors.blue,
          body: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xFF15DCDC),
                      Color(0xFF11A19F),
                      Color(0xFF1E8D8D),
                      Color(0xFF167D7D),
                    ],
                        stops: [
                      0.1,
                      0.4,
                      0.7,
                      0.9
                    ])),
              ),
              Container(
                  height: double.infinity,
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 120,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _buildDesignText(),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        _buildEmialTF(),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        _EnterPassword(),
                        const SizedBox(
                          height: 30,
                        ),
                        _buildloginbutton(),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ))
            ],
          ));
    }
  }

  _signin(String _email, String _password) async {
    try {
      setState(() {
        loading = true;
      });
      await auth.signInWithEmailAndPassword(email: _email, password: _password);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => admin_homepage()));
    } on FirebaseAuthException catch (error) {
      setState(() {
        loading = false;
      });
      Fluttertoast.showToast(
          msg: 'pls enter valid email or password',
          gravity: ToastGravity.CENTER);
    }
  }
}
