import 'package:flutter/material.dart';
import 'main.dart';
import 'register.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final user = TextEditingController();
  final password = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      //ส่วนที่เป็นรูปภาพ
      body: Padding(
        //ใส่ช่องว่างตั้งแต่ขอบจอซ้าย-ขวา มาจนถึง object หลักที่เราจะวาง
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: ListView(
            children: <Widget>[
              Padding(
                //ใส่ช่องว่างตั้งแต่ขอบจอบน-ล่าง มาจนถึง object หลักที่เราจะวาง
                padding: const EdgeInsets.only(top: 30, bottom:15),
                child: Image.asset(
                  'resources/2.jpg',
                  height: 200,
                ),
              ),

              //ส่วนกรอก user's id
              TextFormField(
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey
                ),
                controller: user,
                decoration: InputDecoration(
                  hintText: 'User Id', prefixIcon: Icon(Icons.person, size: 30,),
                ),
              ),

              //ส่วนกรอก user's password
              TextFormField(
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey
                ),
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password', prefixIcon: Icon(Icons.lock, size: 30,),
                ),
              ),

              //ปุ่ม login + function ตรวจจับ
              RaisedButton(
                child: Text('LOGIN'),
                onPressed: (){
                  //ตรวจว่าช่อง user id กับ password มีการกรอกข้อมูลไหม
                  if (user.text.isEmpty || password.text.isEmpty) {
                    final snackBar = SnackBar(
                      content: Text('กรุณาระบุ user or password'),
                    );
                    //เช็คเงื่อนไขใน ช่องกรอกข้อมูล ถ้าตรงตามเงื่อนไขให้ขึ้นแจ้งเตือน(Snackbar)
                    _scaffoldKey.currentState.showSnackBar(snackBar);
                  //ตรวจว่าช่อง user id กับ password กรอกข้อมูลผิดไหม (admin)
                  }else if(user.text == 'admin' && password.text == 'admin'){
                    final snackBar = SnackBar(
                      content: Text('user or password ไม่ถูกต้อง'),
                    );
                    _scaffoldKey.currentState.showSnackBar(snackBar);
                  }else{
                    //ถ้ามีการใส่ข้อมูลตามปกติให้พาไปยังหน้า main
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                  }
                },
              ),
              Align(
                //สร้างปุ่มกด register ไว้ทางขวา
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  child: Text(
                    'Register New Account'
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistPage()));
                  },
                ),
              )
            ],
          ),
        ),
    ));
  }
}
