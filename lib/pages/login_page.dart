import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset(
              'assets/images/login.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    validator: ((value) {
                      if (value != null && value.isEmpty) {
                        return "User name can not be empty";
                      }
                      return null;
                    }),
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                      name = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "User Name",
                    ),
                  ),
                  TextFormField(
                    validator: ((value) {
                      if (value != null && value.isEmpty) {
                        return "Password can not be empty";
                      } else if (value != null && value.length < 6) {
                        return "Passord must contains atleast  6 digit ";
                      }
                      return null;
                    }),
                    onChanged: (value) {
                      print(value);
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
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
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                      height: 40,
                      width: changeButton ? 50 : 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  ElevatedButton(
                      style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                        print('Login is clicked');
                      },
                      child: Text('Login'))
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
