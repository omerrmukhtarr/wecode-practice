
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
            Text(
              "welcome ",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                letterSpacing: 3,
              ),
            ),
            Divider(
              color: Colors.grey,
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
}
