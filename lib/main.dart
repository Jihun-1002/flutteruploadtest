import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());  // 앱 시작해주세요~
}

class MyApp extends StatelessWidget {  // 앱 메인페이지 만드는 법
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Row(
              children: [
                Icon(Icons.person, size: 50,),
                Text('일지훈', style: TextStyle(fontWeight: FontWeight.w700),)
              ],
            ),
            Row(
              children: [
                Icon(Icons.person, size: 50,),
                Text('이지훈', style: TextStyle(fontWeight: FontWeight.w700),)
              ],
            ),
            Row(
              children: [
                Icon(Icons.person, size: 50,),
                Text('삼지훈', style: TextStyle(fontWeight: FontWeight.w700),)
              ],
            )
          ],
        ),
        bottomNavigationBar: BtAppBar(),
      )
    );
  }
}

class BtAppBar extends StatelessWidget {
  const BtAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.phone),
            Icon(Icons.chat),
            Icon(Icons.contact_page)
          ],
        ),
      ),
    );
  }
}
