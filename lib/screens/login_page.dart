import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket/services/auth.dart';
import 'package:ticket/models/user.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);
  @override
  _login_pageState createState() => _login_pageState();
}
class _login_pageState extends State<login_page> {

  bool rememberMe = false;

  final AuthService _auth = AuthService();
  _buildEmialTF(){
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
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon:Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText:
              'ENTER YOUR EMAIL',
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 14
              )
            ),

          ),
        ),
      ],
    );
  }
  Widget _buildPasswordTF(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'PASSWORD',
          style: TextStyle(
            color: Colors.white
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
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon:Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                hintText:
                'ENTER PASSWORD',
                hintStyle: TextStyle(
                  color: Colors.white,
                    fontSize: 14
                )

            ),
          ),
        ),
      ],
    );
  }
  Widget _buildForgotpasswordTF(){
    return Container(
      alignment:Alignment.centerRight,
      child: TextButton(
        onPressed: () => print('forgot password'),
        child: Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
  Widget _buildrememberMeTf(){
    return Container(
      alignment: Alignment.center,
      height: 50,
      child: Row(
        children: <Widget>[
          Theme(data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                value: rememberMe,
                onChanged: (value) {
                  setState(() {
                    rememberMe = value!;
                  });
                },
                checkColor: Colors.green,
                activeColor: Colors.white,)
          ),
          Text(
            'Remember me',
            style: TextStyle(
              color: Colors.white
            ),
          )
        ],
      ),
    );
  }
  Widget _buildloginbutton(){
    return Container(
      padding: EdgeInsets.symmetric( vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => print('button pressed'),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 1.5,
            fontSize: 18,
            fontWeight:   FontWeight.bold,
          ),
        ),
      ),
    );
  }
  Widget _buildsigninWith(){
    return Column(
      children: <Widget> [
        Text('-OR-',
          style: TextStyle(
            color: Colors.white,
            fontWeight:  FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Sign in',
          style: TextStyle(
            fontSize: 15,
          ),
        )
      ],
    );
  }
  Widget _buildoption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        GestureDetector(
          onTap: () => print('login with facebook'),
          child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:  Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0,2),
                      blurRadius: 6.0,
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage('assets/images/facebook.png')
                  )
              )
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () => print('login with google'),
          child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:  Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0,2),
                      blurRadius: 6.0,
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage('assets/images/goole.png')
                  )
              )
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
              width:  double.infinity,
            decoration:BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF73AEF5),
                  Color(0xFF61A4F1),
                  Color(0xFF478DE0),
                  Color(0xFF398AE5)
                ],
                stops: [0.1, 0.4, 0.7,0.9]
              )
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics:  AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 120,
              ),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'SIGN IN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight:FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30,),
                  _buildEmialTF(),
                SizedBox(
                  height: 30,
                ),
                  _buildPasswordTF(),
                  _buildForgotpasswordTF(),
                  _buildrememberMeTf(),
                  _buildloginbutton(),
                  _buildsigninWith(),
                  SizedBox(
                    height: 10,
                  ),
                  _buildoption(),
                  SizedBox(
                    height: 15,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Dont have account?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          )
                        ),
                        TextSpan(
                            text: 'Signup',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            )
                        )
                      ]
                    ),
                  )
                ],
              ),
            )
          )
        ],
      )
      );
  }
}
