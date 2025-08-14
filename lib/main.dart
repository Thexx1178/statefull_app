import 'package:flutter/material.dart';
import 'color_changer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 7'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: const [
          // ถ้ายังอยากมีข้อความอื่น ๆ ใส่ไว้เหนือ Expanded ได้
          // Text('จำนวนครั้งที่กดปุ่ม: 0'),
          Expanded(                 // << ให้ ColorChanger กิน "พื้นที่ที่เหลือ"
            child: ColorChanger(),
          ),
        ],
      ),
      // floatingActionButton: ...  // เอาออกได้ถ้าไม่ใช้แล้ว
    );
  }
}
