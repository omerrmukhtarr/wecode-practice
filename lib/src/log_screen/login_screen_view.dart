import 'package:flutter/material.dart';
import 'package:wecode_practic/src/trainers_screen/trainers_screen_view.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  String name = "User Name";
  String? password;

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Welcome $name"),
          Form(
              child: Column(
            children: [
              //user name

              TextFormField(
                controller: userNameController,
                keyboardType: TextInputType.emailAddress,
              ),

              //password
              TextFormField(
                controller: passwordController,
                obscureText: true,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      name = userNameController.value.text;
                      password = passwordController.value.text;
                    });
                    name = name.trim(); //remove space
                    name = name.toLowerCase(); //convert to lower case

                    if (name == "omerrr" && password == "mukhtar") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => TranersScreenView(
                            userName: name,
                            password: password,
                          ),
                        ),
                      );
                    }
                  },
                  icon: Icon(Icons.login),
                  label: Text("Log In")),

              SizedBox(
                height: 60,
              ),

              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/privacypolicy");
                  },
                  child: Text("Privacy Policy"))
            ],
          ))
        ],
      ),
    );
  }
}
