import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  final int days=9;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("App bar is here"),
      ),
            body: Center(
                    child:Container(
                      child: Text("Welcome to $days day"),
                    ),
                ),
        drawer: Drawer(),
    );
  }
}
