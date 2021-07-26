import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
        color: Colors.white,
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Username", hintText: "Enter Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password", hintText: "Enter Password"),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ElevatedButton(
                      onPressed: (){},
                      child: Text("Login"),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.green[700],
                          primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 12),
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
        ));
  }
}
