import 'package:flutter/material.dart';
import 'botnav.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Trang Chủ")),
      body: const Text('Index Screen'),
      bottomNavigationBar: const BottomNav(idx: 0),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pushNamed(context, '/');
              },
              leading: Icon(Icons.home),
              title: Text('Trang chủ'),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Cá nhân'),
              onTap: () {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pushNamed(context, '/detail');
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Chi tiết'),
              onTap: () {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pushNamed(context, '/detail');
              },
            ),
          ],
        ),
      ),
    );
  }
}
