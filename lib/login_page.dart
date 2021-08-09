import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ticket_login_signin/home_page.dart';
import 'package:ticket_login_signin/loading_page.dart';
import 'package:ticket_login_signin/sign_up.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  bool loading = false;
  bool rememberMe = false;
  late String _email, _password;
  final auth = FirebaseAuth.instance;
  late String value;
  _buildDesignText() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Stack(children: [
              Container(
                padding: EdgeInsets.fromLTRB(60, 0.0, 0.0, 0.0),
                child: Image.asset('assets/images/logo2.png'),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 190.0, 0.0, 0.0),
                    child: Text(
                      "login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ]),
          )
        ],
      ),
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
            color: Colors.grey,
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
              onChanged: (text) {
                value = text;
                setState(() {
                  _email = value.trim();
                });
              }),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
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
            color: Colors.grey,
          ),
          height: 60,
          child: TextField(
              obscureText: true,
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
                  hintText: 'ENTER PASSWORD',
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

  Widget _buildForgotpasswordTF() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print('forgot password'),
        child: const Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  // Widget _buildrememberMeTf() {
  //   return Container(
  //     alignment: Alignment.center,
  //     height: 50,
  //     child: Row(
  //       children: <Widget>[
  //         Theme(
  //             data: ThemeData(unselectedWidgetColor: Colors.white),
  //             child: Checkbox(
  //               value: rememberMe,
  //               onChanged: (value) {
  //                 setState(() {
  //                   rememberMe = value!;
  //                 });
  //               },
  //               checkColor: Colors.black,
  //               activeColor: Colors.white,
  //             )),
  //         const Text(
  //           'Remember me',
  //           style: TextStyle(color: Colors.white),
  //         )
  //       ],
  //     ),
  //   );
  // }

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
        color: Colors.black,
        child: const Text(
          'LOGIN',
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

  Widget _buildsigninWith() {
    return Column(
      children: <Widget>[
        Text(
          '-OR-',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Sign in',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _buildoption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        GestureDetector(
          onTap: () => print('login with facebook'),
          child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage('assets/images/facebook.png')))),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () => print('login with google'),
          child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage('assets/images/google-logo.jpg')))),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return loading_page();
    } else {
      return Scaffold(
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
                      height: 30,
                    ),
                    _buildEmialTF(),
                    const SizedBox(
                      height: 30,
                    ),
                    _buildPasswordTF(),
                    _buildForgotpasswordTF(),
                    // _buildrememberMeTf(),
                    _buildloginbutton(),
                    _buildsigninWith(),
                    const SizedBox(
                      height: 10,
                    ),
                    _buildoption(),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Text(
                          "Admin?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.grey[700]),
                        )),
                        SizedBox(width: 5.0),
                        Center(
                            child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => sign_up(),
                                    )),
                                child: Text(
                                  "Login Here",
                                  style: TextStyle(
                                      color: Colors.green[500],
                                      fontWeight: FontWeight.bold),
                                )))
                      ],
                    ))
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
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => homepage()));
    } on FirebaseAuthException catch (error) {
      setState(() {
        loading = false;
      });
      Fluttertoast.showToast(
          msg: 'pls enter valid email or password',
          gravity: ToastGravity.CENTER);
      print(error);
    }
  }
}
