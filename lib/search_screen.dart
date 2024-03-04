import 'package:flutter/material.dart';
import 'package:weather/search_city_nam.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key, required this.cityName});

  final String cityName;

  @override
  Widget build(BuildContext context) {
    bool isDataLoad = true;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Weather App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchCityName(),
                  ),
                );
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: isDataLoad ? ThereIsData() : NobodySearch(),
    );
  }
}

class ThereIsData extends StatelessWidget {
  const ThereIsData({super.key});

  @override
  Widget build(BuildContext context) {
    Map a={'a':0};
    a['a'];
    return Center(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.orangeAccent,
            Colors.orange.withOpacity(.2)
            ,Colors.orangeAccent,

          ],
          begin: Alignment.topCenter,end: Alignment.bottomCenter,
          )
        ),
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
         const   SizedBox(
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
              const  Column(
                  children: [Text('minTemp : 24'), Text('maxTemp : 40')],
                )
              ],
            ),
         const   SizedBox(
              height: 32,
            ),
         const   Text(
              'Sunny',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}

class NobodySearch extends StatelessWidget {
  const NobodySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('There is no weather 😔 Start Searching now 🔍'),
    );
  }
}
