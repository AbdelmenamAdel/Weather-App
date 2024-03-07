
import 'package:flutter/material.dart';

class ThereIsData extends StatelessWidget {
  const ThereIsData({super.key});

  @override
  Widget build(BuildContext context) {
    Map a = {'a': 0};
    a['a'];
    return Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orange[500]!,
                Colors.orange[300]!,
                Colors.orange[200]!,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Cairo',
              style: TextStyle(fontSize: 42, fontWeight: FontWeight.w700),
            ),
            const Text(
              'Updated at :19:51',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/113.webp'),
                const Text(
                  '35',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Column(
                  children: [Text('minTemp : 24'), Text('maxTemp : 40')],
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Sunny',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),SizedBox(height: 150,)
          ],
        ),
      ),
    );
  }
}
