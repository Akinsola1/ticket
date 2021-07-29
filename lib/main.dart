import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket/screens/login_page.dart';
import 'package:provider/provider.dart';
import 'package:ticket/services/auth.dart';
import 'models/user.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}
// main code for the body.
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: < Widget>[
                      Container(
                        child: const Text(
                          'TICKET- GO',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Text(
                        'Ticket any where you go',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Center(
                    child: Image.asset('assets/images/main1.jpg'),
                  ),
                ),

                Container(
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).push
                      (new MaterialPageRoute(builder: (BuildContext context) => new login_page())),
                    child: Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: const Center(
                        child: Text(
                          'LET GO',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}


