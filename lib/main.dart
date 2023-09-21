
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
} // end of MyApp

// 코드 분리
class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Text("Woman", style: TextStyle(fontWeight: FontWeight.bold)),
                      Spacer(),
                      Text("Kids", style: TextStyle(fontWeight: FontWeight.bold)),
                      Spacer(),
                      Text("Shoes", style: TextStyle(fontWeight: FontWeight.bold)),
                      Spacer(),
                      Text("Bag", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Expanded(
                    flex: 2, child: Image.asset("assets/bag.jpeg",fit: BoxFit.cover)),
                const SizedBox(
                  height: 2,
                ),
                Expanded(
                    flex: 2, child: Image.asset("assets/cloth.jpeg",fit: BoxFit.cover)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}