import 'package:flutter/material.dart';
import 'package:iam_rich/utils/routes.dart';

class LoginPage extends StatelessWidget {
  TextFormField getTextField(String inputlable, String hint, bool hide) {
    return TextFormField(
      obscureText: hide,
      decoration: InputDecoration(labelText: inputlable, hintText: hint),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "images/log.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Wellcome To App",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.green[700]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 32.0),
                child: Column(
                  children: [
                    //TextFormField(
                    getTextField("Username", "Enter Username", false),
                    //  ),
                    //TextFormField(
                    getTextField("Password", "Password", true),
                    //  ),
                    SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeroute);
                      },
                      child: Text("Login"),
                      style: TextButton.styleFrom(
                        minimumSize: Size(100, 50),
                        backgroundColor: Colors.green[700],
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 26, vertical: 12),
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
