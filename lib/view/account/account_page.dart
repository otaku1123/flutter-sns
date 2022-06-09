import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sns_app/model/account.dart';
import 'package:sns_app/model/post.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({ Key? key }) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  Account myAccount = Account(
      id: '1',
      name: 'Flutterラボ',
      selfIntroduction: 'こんばんは',
      userId: 'flutter_lab',
      imagePath:
      'https://yt3.ggpht.com/ngVd2-zv5o3pGUCfiVdZXCHhnq_g1Lo1Y8DbrmB9O8G7DG0IWUQJgsacqsI_LRvZE8JTsbQIuQ=s900-c-k-c0x00ffffff-no-rj',
      createdTime: DateTime.now(),
      updatedTime: DateTime.now());

  List<Post> postList = [
    Post(
        id: '1',
        content: '初めまして',
        postAccountId: '1',
        createdTime: DateTime.now()),
    Post(
        id: '2',
        content: '初めまして2回',
        postAccountId: '1',
        createdTime: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 15, left: 15, top: 20),
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                            CircleAvatar(
                              radius: 32,
                              foregroundImage: NetworkImage(myAccount.imagePath),
                            ),
                            SizedBox(width: 10,height: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    myAccount.name,
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    '@${myAccount.userId}',
                                    style: TextStyle(color: Colors.grey)
                                ),
                              ],
                            )
                          ],
                          ),
                          ElevatedButton(
                            onPressed: (){},
                            child: Text('編集'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(myAccount.selfIntroduction),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.blue, width: 3
                      )
                    )
                  ),
                  child: Text('投稿',
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: postList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              border: index == 0 ? Border(
                                top: BorderSide(color: Colors.grey, width: 0),
                                bottom: BorderSide(color: Colors.grey, width:0),
                              ): Border(bottom: BorderSide(color: Colors.grey, width: 0))
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 22,
                                foregroundImage: NetworkImage(myAccount.imagePath),
                              ),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                myAccount.name,
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                '@${myAccount.userId}',
                                                style: TextStyle(color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                          Text(DateFormat('M/d/yy')
                                              .format(postList[index].createdTime!))
                                        ],
                                      ),
                                      Text(postList[index].content),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );

                      },
                    ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}