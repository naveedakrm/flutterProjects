import 'dart:convert';

import 'package:flt01/Models/Catalogue.dart';
import 'package:flt01/utils/MyRoute.dart';
import 'package:flt01/widgets/Drawer.dart';
import 'package:flt01/widgets/Item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final int days=9;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogueJson =  await rootBundle.loadString("assets/files/catalogue.json");
    // print(catalogueJson);

    //decoding json string into another format(map)
    final decodedData = jsonDecode(catalogueJson);
    // print(decodedData);
    // if we have a map and we want to convert it to string -> jsonEncode()

    var productsData = decodedData["products"];
    // print(productsData);

    CatalogueModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Catalogue App"),
      ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child:
              (CatalogueModel.items != null && CatalogueModel.items!.isNotEmpty)
              ? ListView.builder(
              // itemCount: CatalogueModel.items.length,
              itemCount: CatalogueModel.items?.length,
              itemBuilder: (context, index) => ItemWidget(
              item: CatalogueModel.items![index],
              ),
              )
                  : Center(
              child: CircularProgressIndicator(),
              ),
              ),
        drawer: MyDrawer(),
    );
  }
}
