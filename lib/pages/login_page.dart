
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Enter Email Address',
                      border: OutlineInputBorder()
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'This field must not be empty';
                      }
                      return null;
                    },
                    onSaved: (value){
                      email = value;
                    },
                  ),
                  SizedBox(height: 10.0,),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Enter Password',
                        border: OutlineInputBorder()
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'This field must not be empty';
                      }
                      return null;
                    },
                    onSaved: (value){
                      password = value;
                    },
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                        child: Text('Signup',style: TextStyle(color: Colors.black),),
                        onPressed: (){},
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        color: Colors.amber,
                        child: Text('Signin',style: TextStyle(color: Colors.white),),
                        onPressed: (){},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
