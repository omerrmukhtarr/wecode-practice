import 'package:flutter/material.dart';

class privacypolicy extends StatefulWidget {
  const privacypolicy({ Key? key }) : super(key: key);

  @override
  _privacypolicyState createState() => _privacypolicyState();
}

class _privacypolicyState extends State<privacypolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
      child: Icon(Icons.ac_unit,size:32 , color: Colors.blue,),),
    );
  }
}