import 'dart:convert';

import 'package:atapp/helpers/httprequests.dart';
import 'package:atapp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ItemsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ItemsPage();
  }
}

late var response;
Map<dynamic, dynamic> decodedResponse = Map();

Future<Map> getData() async {
  response = await exec_Request("photos", "", "GET");
  if (response.statusCode == 200) {
    decodedResponse = jsonDecode(await response.body) as Map;
  }
  return decodedResponse;
}

class _ItemsPage extends State<ItemsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Items Screen"),
      ),
      body: SafeArea(
        child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return SingleChildScrollView(
                    child: StaggeredGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      children: List.generate(
                          (decodedResponse["photos"] as List).length,
                          (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(children: [
                                  Image.network(
                                      decodedResponse["photos"][index]["url"]),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      decodedResponse["photos"][index]["title"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      decodedResponse["photos"][index]
                                          ["description"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w200),
                                    ),
                                  )
                                ]),
                              )).toList(),
                    ),
                  );
                }
              }
              return Center(
                  child: CircularProgressIndicator(
                color: MainApp.accentColor,
              ));
            }),
      ),
    );
  }
}
