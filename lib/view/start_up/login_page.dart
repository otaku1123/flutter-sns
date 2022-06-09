import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sns_app/view/screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text('Flutter lab SNS',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                width: 300,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'メールアドレス'
                  ),
                ),
              ),
              Container(
                width: 300,
                child: TextField(
                  controller: passController,
                  decoration: InputDecoration(
                      hintText: 'パスワード'
                  ),
                ),
              ),
              SizedBox(height: 10,),
              RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black),
                    children:[
                      TextSpan(text: 'アカウントを作成していない方は'),
                      TextSpan(
                        text: 'こちら',
                        style: TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()..onTap = () {
                          print('アカウントを作成');
                        },
                      ),
                    ],
                  ),
              ),
              SizedBox(height: 70,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Screen()));
                  },
                  child: Text('emailでログイン'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}