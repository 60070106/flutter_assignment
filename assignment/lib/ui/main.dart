import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //กำหนด Tab icon ให้มี 5 อัน
      length: 5,
      child: Scaffold(
        //กำหนดให้ Tabbar อยู่ด้านล่าง
        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.view_compact),
            ),
            Tab(
              icon: Icon(Icons.notifications),
            ),
            Tab(
              icon: Icon(Icons.explore),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
          ],
          //สีตัวที่เลือก
          labelColor: Colors.white,
          //สีตัวที่ไม่ได้เลือก
          unselectedLabelColor: Colors.white30,
          indicatorSize: TabBarIndicatorSize.label,
        ),
        //ใส่สี background
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
          //ลบปุ่มย้อนกลับซ้ายบน
          automaticallyImplyLeading: false,
        ),
        body: TabBarView(
          children: [
            new Container(
              child: Center(
                child: Text('Home'),
              ),
              //ทำให้หน้าจอส่วนที่เป็นข้อความ(กลางจอ)เป็นสีขาว
              color: Colors.white,
            ),
            new Container(
              child: Center(
                child: Text('Notify'),
              ),
              color: Colors.white,
            ),
            new Container(
              child: Center(
                child: Text('Map'),
              ),
              color: Colors.white,
            ),
            new Container(
              child: Center(
                child: Text('Profile'),
              ),
              color: Colors.white,
            ),
            new Container(
              child: Center(
                child: Text('Setup'),
              ),
              color: Colors.white,
            ),
            
          ],
        )
      ),
      );
  }
}
