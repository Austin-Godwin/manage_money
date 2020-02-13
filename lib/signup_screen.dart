import 'package:flutter/material.dart';
//import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.transparent,
//        title: Text('SIGNUP PAGE'),
//      ),
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            Text(
              'Signup',
              style: TextStyle(
                color: Colors.green[800],
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 0.0,
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your email address';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        labelText: 'Input Your Email',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 0.0,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        labelText: 'Input Your Password',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 0.0,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        labelText: 'Confirm Password',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  RaisedButton(
                    color: Colors.green,
                    child: Text(
                      'SIGNUP',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context
//                          MaterialPageRoute(
//                            builder: (context) => LoginScreen(),
//                          ),
                            );
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              height: 50.0,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context
//                      MaterialPageRoute(
//                        builder: (context) => LoginScreen(),
//                      ),
                        );
                  });
                },
                child: Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
