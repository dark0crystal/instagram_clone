import 'package:flutter/material.dart';

class Login extends StatefulWidget {
   Login({super.key});
    final _formKey = GlobalKey<FormState>();
      String email='';
      String password='';


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LogIn'),
      ),
      body:Container(
        padding: EdgeInsets.all(20),
        child: Form(key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
              )
            ],
          ),
          
        ),

      ),
    );
    
  }
}