import 'package:flt01/utils/MyRoute.dart';
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
                    child:Column(
                      children: [
                        SizedBox( height: 200),
                        Container(
                          child: Text("Welcome to $days day"),
                        ),
                        SizedBox(height: 200),
                        ElevatedButton(
                          child:Text("Back"),
                            onPressed: (){
                            Navigator.pushNamed(context, MyRoute.routeLoginPage);
                            }
                            ),
                      ],
                    ),
                ),
        drawer: Drawer(),
    );
  }
}
