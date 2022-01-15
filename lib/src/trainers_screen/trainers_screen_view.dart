import 'package:flutter/material.dart';
import 'package:wecode_practic/src/temp/student_mock_data.dart';

class TranersScreenView extends StatelessWidget {
  const TranersScreenView({Key? key, this.userName, this.password})
      : super(key: key);
  final String? userName;
  final String? password;

  get index => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: studentMockList.length,
            itemBuilder: (context, index) {
              return theStudentcard(index);
            }));
  }

  theStudentcard(int index) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(top: 10, right: 10, left: 10),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Text(studentMockList[index].stackoverflow!),
    );
  }
}
