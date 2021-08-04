import 'package:flutter/material.dart';
import 'package:iam_rich/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  String name = "";
  bool changeButton = false;
  TextFormField getTextField(String inputlable, String hint, bool hide) {
    return TextFormField(
      obscureText: hide,
      decoration: InputDecoration(labelText: inputlable, hintText: hint),
      onChanged: (value) {
        name = value;
        setState(() {});
      },
      validator: (value) {
        if (value!.isEmpty) {
          return "You can't proceed with empty";
        }
        if (value.length < 6) {
          return "At least 6 characters are required";
        } else {
          return null;
        }
      },
    );
  }

  moveTohome(BuildContext context) async {
    // if(_formkey.currentState!.validate()) {

    // }
    //else {
    setState(() {
      changeButton = true;
    });

    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeroute);
    // Future.delayed(Duration(seconds: 1));
    setState(() async {
      changeButton = false;
    });
    // }
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
                "Wellcome $name To App",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.green[700]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 32.0),
                child: Form(
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
                      Material(
                        borderRadius:
                            BorderRadius.circular(changeButton ? 100 : 20),
                        color: Colors.green[600],
                        child: InkWell(
                          onTap: () => moveTohome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 50,
                            width: changeButton ? 100 : 140,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                          ),
                        ),
                      ),

                      

                      /*ElevatedButton(
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
                        ),*/
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
