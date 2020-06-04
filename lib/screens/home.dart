import 'package:flutter/material.dart';
import 'package:merhabafire/screens/login.dart';
import 'package:merhabafire/screens/register.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),
      ),
      drawer: Drawer(child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.orange
            ),
            child: Text(
                'Drawer Header',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),

            ),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Login'),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=>LogIn()
                  ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Register'),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context)=>Register()
                ),
              );
            },
          ),
        ],
      ),
      ),
      body: Center(
          child: Text('Bu sayfa home'),
      ),
    );
  }
}
