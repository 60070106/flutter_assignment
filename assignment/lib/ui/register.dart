import 'package:flutter/material.dart';
import 'login.dart';

class RegistPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return RegistPageState();
  }

}

class RegistPageState extends State<StatefulWidget>{
  final email = TextEditingController();
  final password = TextEditingController();
  final repassword = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Register'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: ListView(
              children: <Widget>[

                //ช่องกรอก email
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: 'Email', prefixIcon: Icon(Icons.mail_outline, size: 20,color: Colors.blue,),
                    hintStyle: TextStyle(
                      color: Colors.blue
                    )
                  ),
                ),

                //ช่องกรอก password
                TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password', prefixIcon: Icon(Icons.lock, size: 20,color: Colors.blue,),
                    hintStyle: TextStyle(
                      color: Colors.blue
                    )
                  ),
                ),

                //ช่องกรอก repassword
                TextFormField(
                  controller: repassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Repassword', prefixIcon: Icon(Icons.lock, size: 20,color: Colors.blue,),
                    hintStyle: TextStyle(
                      color: Colors.blue
                    )
                  ),
                ),

                //ปุ่มยืนยันการสมัคร
                RaisedButton(
                  child: Text('CONTINUE'),
                  //กำหนดสีให้ปุ่ม
                  color: Colors.blue,
                  //กำหนดสีให้ตัวอักษร
                  textColor: Colors.white,
                  onPressed: (){
                    //ไม่ได้กรอกข้อมูล
                    if(email.text.isEmpty || password.text.isEmpty || repassword.text.isEmpty){
                      final snackBar = SnackBar(
                          content: Text('กรุณาระบุข้อมูลให้ครบถ้วน'),
                        );
                        _scaffoldKey.currentState.showSnackBar(snackBar);

                    //ตรวจสอบว่าใช่ admin หรือไม่
                    }else if(email.text == 'admin'){
                      final snackBar = SnackBar(
                          content: Text('user นี้มีอยู่ในระบบแล้ว'),
                        );
                        _scaffoldKey.currentState.showSnackBar(snackBar);
                    }else{
                      //พากลับไปหน้า login
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginForm()));
                    }
                  },
                )
              ],
            ),
          ),
        ),
    );
  }

}