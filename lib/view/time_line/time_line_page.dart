import 'package:flutter/material.dart';
import 'package:sns_app/model/account.dart';

class TimeLinePage extends StatefulWidget {
  TimeLinePage({Key? key}) : super(key: key);

  @override
  State<TimeLinePage> createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  Account myAccont = Account(
    id: '1',
    name: 'Flutterラボ',
    selfIntroduction: 'こんばんは',
    userId: 'flutter_lab',
    imagePath: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fyt3.ggpht.com%2FngVd2-zv5o3pGUCfiVdZXCHhnq_g1Lo1Y8DbrmB9O8G7DG0IWUQJgsacqsI_LRvZE8JTsbQIuQ%3Ds900-c-k-c0x00ffffff-no-rj&imgrefurl=https%3A%2F%2Fwww.youtube.com%2Fchannel%2FUCrzA_ub-JcI_8daABLfOg-g&tbnid=JXDqsRXdjm9VcM&vet=12ahUKEwjoquCWq574AhWTRvUHHeyVAgwQMygAegUIARClAQ..i&docid=oXCS6nWt6AKvNM&w=900&h=900&q=flutter%E3%83%A9%E3%83%9C&ved=2ahUKEwjoquCWq574AhWTRvUHHeyVAgwQMygAegUIARClAQ',
    createdTime: DateTime.now(),
    updatedTime: DateTime.now()
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('タイムライン'),),
    );
  }
}