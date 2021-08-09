import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
// // import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:ticket_login_signin/login_page.dart';

import 'TicketValidation.dart';

// @dart=2.9
class mainDrawer extends StatelessWidget {
  mainDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(40),
            color: Color(0xFF15DCDC),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://i0.wp.com/cdn3.iconfinder.com/data/icons/avatars-15/64/_Ninja-2-512.png'),
                          fit: BoxFit.fill,
                        )),
                  ),
                  Text(
                    ' Akinsola faruq',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    ' Akinsola@gmail.coma',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.airplane_ticket_rounded),
            title: Text(
              'Ticket vending',
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(Icons.sync),
            title: Text(
              'Sync scan Records ',
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              'Ticket Validation',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ticket_validation()));
            },
          ),
          ListTile(
            leading: LiteRollingSwitch(
              value: true,
              textOn: "on",
              textOff: "off",
              colorOn: Color(0xFF15DCDC),
              iconOn: Icons.done,
              iconOff: Icons.alarm_off,
              textSize: 5,
              onChanged: (bool position) {
                print('this button is $position');
              },
            ),
            title: Text(
              'Backup',
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => login_page()));
            },
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/icon_logo.png',
                  height: 70,
                  width: 70,
                ),
                Image.asset(
                  'assets/images/byte_work.png',
                  height: 50,
                  width: 50,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
