import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_login_signin/mainDrawer.dart';

class homepage extends StatelessWidget {
  homepage({Key? key}) : super(key: key);
  final auth = FirebaseAuth.instance;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF15DCDC),
        title: Text(
          'Ticket Agent',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.sync,
            size: 30,
          ),
        ],
      ),
      drawer: Drawer(
        child: mainDrawer(),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                elevation: 5.0,
                child: Container(
                  height: 150,
                  alignment: Alignment(-0.9, -1),
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(Icons.stacked_bar_chart),
                            ),
                            SizedBox(width: 10),
                            Container(
                              child: Text(
                                "Scan Record Performance",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color(0xFF15DCDC),
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3),
                          child: Row(
                            children: [
                              Container(child: Icon(Icons.copy)),
                              SizedBox(width: 20),
                              Container(
                                child: Text(
                                  "Successful Scans",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                              ),
                              SizedBox(width: 120),
                              Container(
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 2,
                        color: Colors.grey[400],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3),
                          child: Row(
                            children: [
                              Container(child: Icon(Icons.copy)),
                              SizedBox(width: 20),
                              Container(
                                child: Text(
                                  "Total Synced",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                              ),
                              SizedBox(width: 150),
                              Container(
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                elevation: 5.0,
                child: Container(
                  height: 200,
                  alignment: Alignment(-0.9, -1),
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(Icons.stacked_bar_chart),
                            ),
                            SizedBox(width: 10),
                            Container(
                              child: Text(
                                "Scanned Perfomance Record",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                        child: Container(
                          color: Color(0xFF15DCDC),
                          height: 10,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3),
                          child: Row(
                            children: [
                              Container(child: Icon(Icons.copy)),
                              SizedBox(width: 20),
                              Container(
                                child: Text(
                                  "Today",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                              ),
                              SizedBox(width: 200),
                              Container(
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 2,
                        color: Colors.grey[400],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3),
                          child: Row(
                            children: [
                              Container(child: Icon(Icons.copy)),
                              SizedBox(width: 20),
                              Container(
                                child: Text(
                                  "This Month",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                              ),
                              SizedBox(width: 160),
                              Container(
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 2,
                        color: Colors.grey[400],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3),
                          child: Row(
                            children: [
                              Container(child: Icon(Icons.copy)),
                              SizedBox(width: 20),
                              Container(
                                child: Text(
                                  "All Time",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                              ),
                              SizedBox(width: 185),
                              Container(
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                elevation: 5.0,
                child: Container(
                  height: 200,
                  alignment: Alignment(-0.9, -1),
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(Icons.stacked_bar_chart),
                            ),
                            SizedBox(width: 10),
                            Container(
                              child: Text(
                                " Vending Performance Record",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color(0xFF15DCDC),
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3),
                          child: Row(
                            children: [
                              Container(child: Icon(Icons.copy)),
                              SizedBox(width: 20),
                              Container(
                                child: Text(
                                  "Today",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                              ),
                              SizedBox(width: 220),
                              Container(
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 2,
                        color: Colors.grey[400],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3),
                          child: Row(
                            children: [
                              Container(child: Icon(Icons.copy)),
                              SizedBox(width: 20),
                              Container(
                                child: Text(
                                  "This Month",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                              ),
                              SizedBox(width: 180),
                              Container(
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 2,
                        color: Colors.grey[400],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3),
                          child: Row(
                            children: [
                              Container(child: Icon(Icons.copy)),
                              SizedBox(width: 20),
                              Container(
                                child: Text(
                                  "All Time",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                              ),
                              SizedBox(width: 205),
                              Container(
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: ('SRS'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_line_chart),
            label: ('SPR'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart),
            label: ('VPR'),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
