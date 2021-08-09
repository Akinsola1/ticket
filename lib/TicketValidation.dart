import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ticket_validation extends StatelessWidget {
  const ticket_validation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
        child: Container(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Card(
                  color: Colors.black,
                  elevation: 5.0,
                  child: Container(
                    height: 200,
                    alignment: Alignment(-0.9, -1),
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 35),
                            child: Column(
                              children: [
                                Center(
                                  child: Icon(
                                    Icons.assignment,
                                    color: Colors.lightBlueAccent,
                                    size: 100,
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    'Physical Ticket(Barcode)',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
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
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                color: Colors.black,
                elevation: 5.0,
                child: Container(
                  height: 200,
                  alignment: Alignment(-0.9, -1),
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Column(
                            children: [
                              Center(
                                child: Icon(
                                  Icons.qr_code,
                                  color: Colors.lightBlueAccent,
                                  size: 100,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          ticket_validation()));
                                },
                                child: Text(
                                  'E-Ticket',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
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
    );
  }
}
