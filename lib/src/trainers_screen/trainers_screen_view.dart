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
      child: Stack(
        children: [
          Container(
            height: 90,
            width: 90,
            child: Image.network(
              studentMockList[index].imgUrl ??
                  'https://4kwallpapers.com/images/wallpapers/gal-gadot-portrait-face-closeup-2020-1242x2208-3109.jpg',
              width: 90,
              height: 90,
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(studentMockList[index].stackoverflow!),
                  Column(
                    children: [
                      Text(studentMockList[index].points.toString()),
                      Divider(
                        height: 8,
                      ),
                      Text("Points"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
