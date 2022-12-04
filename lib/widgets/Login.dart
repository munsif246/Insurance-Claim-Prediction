import 'package:flutter/material.dart';
import 'TextItem.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(children: <Widget>[
        Positioned(
          child: Container(
            height: 100,
            width: 400,
            color: Color.fromARGB(255, 45, 229, 239).withOpacity(0.1),
            margin: EdgeInsets.fromLTRB(20, 130, 30, 30),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text("Username:", style: TextStyle(),)
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(143, 148, 251, .2),
                        blurRadius: 20.0,
                        offset: Offset(0, 10))
                  ]),
            ),
          ]),
        )
      ]),
    );
  }
}
