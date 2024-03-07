import 'package:flutter/material.dart';
import 'package:weather/screens/search_city_nam.dart';

import 'noBodySearch.dart';
import 'there_is_data.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDataLoad = true;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Weather App',

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
              ))
        ],
      ),
      body: isDataLoad ?const ThereIsData() :const NobodySearch(),
    );
  }
}
