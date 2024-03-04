

import 'package:flutter/material.dart';

class SearchCityName extends StatelessWidget {
  const SearchCityName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor: Colors.blue,
        title: Text('Search a city',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Search with a city name",
                  labelText: "Search",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  )),
            )),
      ),
    );
  }
}
