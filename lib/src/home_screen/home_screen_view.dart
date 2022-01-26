import 'package:flutter/material.dart';

class HomescreenView extends StatelessWidget {
  const HomescreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("welcome"),
            Divider(
              color: Colors.green[800],
              height: 50.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: Text("Log in"))
          ],
        ),
      ),
    );
  }

  // Future<String> wait3secend() async {
  //   await Future.delayed(Duration(seconds: 3));
  //   return 'value recieved';
  // }
}
