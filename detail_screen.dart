import 'package:flutter/material.dart';
import 'botnav.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Trang chi tiết')),
    body: const Text('Detail Screen'),
    bottomNavigationBar: const BottomNav(idx:1),
    );
  }
}