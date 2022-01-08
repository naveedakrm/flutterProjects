import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child:Center(
          child: Column(
            children: [
              Image.asset(
                  "assets/images/img_login.png",fit:BoxFit.cover
              ),
              SizedBox( height:20),
              Text("Login Here",style: TextStyle(fontSize: 20, color: Colors.green)),
              Padding(   padding: const EdgeInsets.symmetric(vertical:20 ,horizontal:30 ),
                  child:Column(
                    children:[
                        TextFormField(decoration: InputDecoration(
                        hintText: "user name",
                        labelText: "User name",
                          ),
                          ),
                      TextFormField(
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                          ),
                          ),
                      SizedBox( height:20),
                      ElevatedButton(
                        child: Text("Login"),
                        onPressed: (){
                          print("Button pressed");
                        },
                      ),
                  ],
            ),
        ),
      ],
      ),
      ),
    );
  }
}

/*

child: Text("login Page",
style: TextStyle(
fontSize: 20,
color: Colors.red,
fontWeight: FontWeight.bold
),
),
   */