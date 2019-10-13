import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
final _formkey = GlobalKey<FormState>();  
String username;

submit(){
  _formkey.currentState.save();
  Navigator.pop(context, username);

}

  @override
  Widget build(BuildContext parentContext) {
    return Scaffold(
      appBar: AppBar(title: Text("Create account"),),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Form(
                key: _formkey,
                child: TextFormField(
                  onSaved: (val) => username = val,
                decoration: InputDecoration(
                  labelText: "username",
                  labelStyle: TextStyle(fontSize: 15.0),
                  hintText: "Must be atleast 3 character",

                ),
              ),
            )
          )
     ),
     GestureDetector(
       onTap: submit,
       child: Container(
         child: Text("Submit"),
         
        
       ),
     )
        ],
      ),
     
      );
  }
}
